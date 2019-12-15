//#include <iostream>                                                                                         // include for debug
#include <opencv2/imgproc.hpp>
#include "fceMrk.h"

// Class for FaceMarking
FaceMarking::FaceMarking(){                                                                                 // constructor
    //std::cout << "CREATING instance of FaceMarking at " << this << std::endl;
}
FaceMarking::~FaceMarking(){                                                                                // destructor
    //std::cout << "DELETING instance of FaceMarking at " << this << std::endl;
}

void FaceMarking::crossHair(std::vector<cv::Rect>& faces, double scale, cv::Mat& matFrame) 
{
    for (size_t i = 0; i < faces.size(); i++) {                                                             // pick out the various faces stored in the vector
        cv::Rect r = faces[i];                                                                              // rectangle object from face recognition algorithm
        
        //std::vector<cv::Rect> nestedBoxes;                                                                // rectangles to box faces in image
        cv::Point center;                                                                                   // the definition for a 2-D point in the image
        cv::Scalar red = cv::Scalar(0, 0, 255);                                                             // drawing tool color passed via Scalar for red
        center.x = cvRound((r.x + r.width * 0.5) * scale);                                                  // round fp number to nearest integer
        center.y = cvRound((r.y + r.height * 0.5) * scale);                                                 // round fp number to nearest integer
        cv::drawMarker(matFrame, center, red, 0, 30, 2, 8);                                               // draw cross-hairs where robot should be looking
    }
}