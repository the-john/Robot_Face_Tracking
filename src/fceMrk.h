#ifndef FCEMRK_H                                                                 // make sure header is not already defined
#define FCEMRK_H                                                                 // define header

//#include <iostream>                                                               // for debug
#include <opencv2/imgproc.hpp>

// Class for FaceMarking
class FaceMarking
{
    public:
        // constructor / destructor
        FaceMarking();
        ~FaceMarking();

        // function
        void crossHair(std::vector<cv::Rect>& faces, double scale, cv::Mat& matFrame);

    private:
};

#endif