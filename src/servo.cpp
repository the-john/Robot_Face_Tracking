//#include <iostream>                                                                               // include for debug
#include <iomanip>
#include <opencv2/imgproc.hpp>
#include "img.h"
#include "servo.h"

// Here we pull apart the face difference vector and turn it into an "x" vector and a "y" vector. 
// The "x" vector gets translated into a servo pulse width number (pulse width in ms) which can be used to adjust the gimbal pan.
// The "y" vector gets translated into a servo pulse width number (pulse width in ms) which can be used to adjust the gimbal tilt.
// Because you don't have gimbal attached to your Udacity Workspace, I will indicate these vector values with white lines on the image frame.

// Function for x and y vector placement
void servo(cv::Point frame, cv::Point target, cv::Mat& frameClone) 
{
    cv::Scalar wht = cv::Scalar(255, 255, 255);                                                     // drawing tool color passed via Scalar for white
    
    cv::Point x_vectorPtr;                                                                          // create a vector for servo gimbal pan
    x_vectorPtr.x = target.x;
    x_vectorPtr.y = frame.y;
    
    cv::Point y_vectorPtr;                                                                          // create a vector for servo gimbal tilt
    y_vectorPtr.x = frame.x;
    y_vectorPtr.y = target.y;

    if (target.x > 0)
        cv::arrowedLine(frameClone, frame, x_vectorPtr, wht, 2, 8, 0, 0.1);                         // draw out the x vector (yaw) in white
    if (target.y > 0)   
        cv::arrowedLine(frameClone, frame, y_vectorPtr, wht, 2, 8, 0, 0.1);                         // draw out the y vector (pitch) in white

    // Now we calculate a representative pulse width for each vector
    // The gimbal at a position of full left or full up has a pulse width of 1.0ms
    // The gimgal at a position of full right or full down has a pulse width of 2.0ms
    // The gimbal at a center position has a pulse width of 1.5ms
    int imgWidth = frameClone.cols;
    int imgHeight = frameClone.rows;

    // First we calculate for the gimbal's pan position
    float pwx = 1.5;                                                                                // set our scan pulse width in ms
    float x_pos = target.x;
    if (x_pos != 0)
        pwx = ((x_pos / imgWidth) - 0.5) + 1.5;
    else {
        pwx = 1.5;                                                                                  // if we loose contact, go back to center position 
        int x_location = (imgWidth / 2) - 150;
        int y_location = imgHeight - (imgHeight / 10);
        cv::putText(frameClone, "Face Target Lost!", cv::Point(x_location, y_location), cv::FONT_HERSHEY_COMPLEX_SMALL, 1.5, cv::Scalar(0, 0, 255), 1, true);
        cv::putText(frameClone, "Returning to center position.", cv::Point(x_location - 100, y_location + 40), cv::FONT_HERSHEY_COMPLEX_SMALL, 1.5, cv::Scalar(0, 0, 255), 1, true);
    }                                                                                 

    if (pwx > 2.0)                                                                                  // put some safety limits on the scan
        pwx = 2.0;
    if (pwx < 1.0)
        pwx = 1.0;

    // Now we calculate for the gimbal's tilt position
    float pwy = 1.5;                                                                                // set our tilt pulse width in ms
    float y_pos = target.y;
    if (y_pos != 0)
        pwy = ((y_pos / imgHeight) - 0.5) + 1.5;
    else
        pwy = 1.5;                                                                                  // if we loose contact, go back to centr position

    if (pwy > 2.0)                                                                                  // put some safety limits on the tilt
        pwy = 2.0;
    if (pwy < 1.0)
        pwy = 1.0;

    // Now that we have the values we need for the gimbal servo pulse widths, we need to send them out.
    // Because you have no gimbals attached to your computer, I will visually send out these values for your observation.
    std::ostringstream panPwm;
    panPwm << std::setprecision(3) << std::fixed << pwx;
    std::string PanPwmS(panPwm.str());
    PanPwmS += " ms";

    cv::putText(frameClone, "PAN PWM Value", cv::Point(30, 30), cv::FONT_HERSHEY_COMPLEX_SMALL, 1.5, cv::Scalar(255, 255, 255), 1, true);
    cv::putText(frameClone, PanPwmS, cv::Point(30, 70), cv::FONT_HERSHEY_DUPLEX, 1.5, cv::Scalar(255, 255, 255), 1, true);

    std::ostringstream tiltPwm;
    tiltPwm << std::setprecision(3) << std::fixed << pwy;
    std::string tiltPwmS(tiltPwm.str());
    tiltPwmS += " ms";

    cv::putText(frameClone, "TILT PWM Value", cv::Point(625, 30), cv::FONT_HERSHEY_COMPLEX_SMALL, 1.5, cv::Scalar(255, 255, 255), 1, true);
    cv::putText(frameClone, tiltPwmS, cv::Point(625, 70), cv::FONT_HERSHEY_DUPLEX, 1.5, cv::Scalar(255, 255, 255), 1, true);
}