#include <iostream>                                                                                         
#include <opencv2/objdetect.hpp>
#include <opencv2/highgui.hpp>
#include <thread>
//#include <vector>                                                                                               /////////////////////////////////////
#include "face.h"
#include "fceMrk.h"
#include "xyVector.h"
#include "img.h"

// Class for face detection
Face::Face(){                                                                                               // constructor
    std::cout << "CREATING instance of Face at " << this << std::endl;
}
Face::~Face(){                                                                                              // destructor
    std::cout << "DELETING instance of Face at " << this << std::endl;
}

void Face::getFrame(cv::VideoCapture &cap, cv::CascadeClassifier& cascade)
{
    while (1) {                                                                                             // run until end of video or user command to stop
        //std::cout << "About to read the frame in getFrame **************************************************" << std::endl;  // for debug
        cap.read(_frame);                                                                                   // read a new frame from the video file
        //std::cout << "Just read the frame in getFrame ######################################################" << std::endl;  // for debug
        if (Frame().empty()) {                                                                              // end of video found, exit the program
            std::cout << "I found the end of the video... " << std::endl;
            std::cout << "Ending the program." << std::endl;
            break;
        }        
                 
        Face::detect(cascade);                                                                              // find faces and mark them  
        if (Face::checkUserInput() == 1)                                                                    // see if user wants to break out of this code
            break;
    }
}                                                                                   

void Face::detect(cv::CascadeClassifier& cascade) 
{
    Img img;
    cv::Mat grayImg;
    cv::Mat shrinkImg;

    cv::cvtColor(_frame, grayImg, cv::COLOR_BGR2GRAY);                                                      // convert to gray scale
    // Recude the size of the gray image by "fx" and feed that to the face detection algorithm; a reduced size will compute MUCH faster
    double fx = 1 / scale();
    cv::resize(grayImg, shrinkImg, cv::Size(), fx, fx, cv::INTER_LINEAR);                                   // resize the grayscale image, nearest-neighbor interpolation
    cv::equalizeHist(shrinkImg, shrinkImg);                                                                 // increase contrast via histogram equalization
    cascade.detectMultiScale(shrinkImg, faces, 1.1, 2, 0|cv::CASCADE_SCALE_IMAGE, cv::Size(50, 80));        // detect faces of different sizes useing cascade classifier (30, 30)
    
    
    //faceMarking.crossHair(faces, scale(), _frame);                                                          // put crosshairs on faces in image with a thread
    std::thread faceMark(FaceMarking(faces, scale(), _frame));                                              // launch thread to put crosshairs on faces in image
    
    //xyVector.faceVector(faces, scale(), _frame);                                                            // show offset vector from center of image to center of face
    std::thread vectorMark(XYVector(faces, scale(), _frame));                                               // launch thread to put vectors on image
    
    faceMark.join();
    vectorMark.join();

    img.setText("Human Face Detection & Tracking");                                                         // set the title for the diplayed image
    img.showImg(_frame);                                                                                    // DISPLAY RESULTS
}

void Face::detect(Error error)
{
    std::cout << "Cannot open the video file!" << std::endl;
    std::cout << "Shutting down program.  Press any key to exit." << std::endl;
    std::cin.get();                                                                                         // wait for any key press
    std::exit;
}

int Face::checkUserInput() {
    // Breaking the while loop via user command
    char c = (char)cv::waitKey(10);
    if (c == 27 || c =='q' || c == 'Q') {                                                                   // key entry of 'esc', 'q', or 'Q'
        std::cout << "Killing program as per keyboard command." << std::endl;
        return 1;
    }
    else
        return 0;
}

/*
    // Make a vector containing both threads
    std::vector<std::thread> threads;

    // start the threads
    int nThreads = 4;
    for (int i = 0; i < nThreads; ++i)
    {
        threads.emplace_back(std::thread[]() {              // stuff thread vector with lambda functions = the part being sent to the thread to be executed in parallel
            while (true);                                   // infinite loop in thread
        }));
    }
    // wait for threads to finish before leaving
    std::for_each(threads.begin(), threads.end(), [](std::thread &t) {
        t.join();
    });

    */
    
    