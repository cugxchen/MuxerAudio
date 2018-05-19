#include <iostream>
#include "../MuxerPcm/MuxerPcm.h"

int main()
{
    std::cout << "Hello, World!" << std::endl;

    MuxerPcm muxerPcm;
    muxerPcm.Muxer();

    return 0;
}