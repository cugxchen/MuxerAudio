//
// Created by 909845 on 2018/5/19.
//

#include <assert.h>
#include <iostream>
#include "MuxerPcm.h"

static const Int32 NUM = 160;

MuxerPcm::MuxerPcm()
{
    pF1 = fopen("../media/src1.pcm", "rb");
    pF2 = fopen("../media/src2.pcm", "rb");
    pF3 = fopen("../media/src3.pcm", "rb");
    pF4 = fopen("../media/src4.pcm", "rb");
    pMux = fopen("../media/muxer.pcm", "wb");
}

MuxerPcm::~MuxerPcm()
{
    if (pF1 != nullptr)
    {
        fclose(pF1);
    }

    if (pF2 != nullptr)
    {
        fclose(pF2);
    }

    if (pF3 != nullptr)
    {
        fclose(pF3);
    }

    if (pF4 != nullptr)
    {
        fclose(pF4);
    }

    if (pMux != nullptr)
    {
        fclose(pMux);
    }
}

void MuxerPcm::Muxer()
{
    assert(pF1 != nullptr);
    assert(pF2 != nullptr);
    assert(pF3 != nullptr);
    assert(pF4 != nullptr);
    assert(pMux != nullptr);

    Int16 buf1[NUM] = {0};
    Int16 buf2[NUM] = {0};
    Int16 buf3[NUM] = {0};
    Int16 buf4[NUM] = {0};
    Int16 sumBuf[NUM] = {0};

    cout << "Begin muxer pcm" << endl;
    while (1)
    {
        if (fread(buf1, sizeof(Int16), NUM, pF1) <= 0)
        {
            cout << "read end of pF1" << endl;
            break;
        }
        if (fread(buf2, sizeof(Int16), NUM, pF2) <= 0)
        {
            cout << "read end of pF2" << endl;
            break;
        }
        if (fread(buf3, sizeof(Int16), NUM, pF3) <= 0)
        {
            cout << "read end of pF3" << endl;
            break;
        }
        if (fread(buf4, sizeof(Int16), NUM, pF4) <= 0)
        {
            cout << "read end of pF4" << endl;
            break;
        }


        for (int i = 0; i < NUM; ++i)
        {
            //1、直接相加法
            //sumBuf[i] = LimAmp(Sum(buf1[i], buf2[i], buf3[i], buf4[i])); //溢出项很多啊

            //2、加权平均法
            //sumBuf[i] = LimAmp(AAW(buf1[i], buf2[i], buf3[i], buf4[i]));//从打印看没有溢出的

            //3、自对齐权重法
            sumBuf[i] = LimAmp(ASW(buf1[i], buf2[i], buf3[i], buf4[i]));
        }
        fwrite(sumBuf, sizeof(Int16), NUM, pMux);
    }
    cout << "End muxer pcm" << endl;
}

Int16 MuxerPcm::LimAmp(Int32 nSum)
{
    Int16 nResult = 0;
    const Int16 nSigned16BitMax = (0x1 << 15) - 1;
    const Int16 nSigned16BitMin = -1 * nSigned16BitMax - 1;

    if (nSum > nSigned16BitMax)   // 大于37267
    {
        nResult = nSigned16BitMax;
        cout << "nSigned16BitMax=" << nSigned16BitMax << "  curValue=" << nSum << endl;
    }
    else if (nSum < nSigned16BitMin)
    {
        nResult = nSigned16BitMin;
        cout << "nSigned16BitMin=" << nSigned16BitMin << "  curValue=" << nSum << endl;
    }
    else
    {
        nResult = (Int16) nSum;
    }

    return nResult;
}

Int32 MuxerPcm::Sum(Int16 nSrc1, Int16 nSrc2, Int16 nSrc3, Int16 nSrc4)
{
    return ((Int32) nSrc1 + nSrc2 + nSrc3 + nSrc4);
}

Int32 MuxerPcm::AAW(Int16 nSrc1, Int16 nSrc2, Int16 nSrc3, Int16 nSrc4)
{
    return Sum(nSrc1, nSrc2, nSrc3, nSrc4) / 4;
}

Int32 MuxerPcm::ASW(Int16 nSrc1, Int16 nSrc2, Int16 nSrc3, Int16 nSrc4)
{
    Int32 nSgn1 = nSrc1 >= 0 ? 1 : -1;
    Int32 nSgn2 = nSrc2 >= 0 ? 1 : -1;
    Int32 nSgn3 = nSrc3 >= 0 ? 1 : -1;
    Int32 nSgn4 = nSrc4 >= 0 ? 1 : -1;

    Int64 nMem = (Int64) nSgn1 * nSrc1 * nSrc1 + nSgn2 * nSrc2 * nSrc2 + nSgn3 * nSrc3 * nSrc3 + nSgn4 * nSrc4 * nSrc4;
    Int32 nDen = abs(nSrc1) + abs(nSrc2) + abs(nSrc3) + abs(nSrc4);

    Int32 nResult = 0;
    if (nDen == 0)
    {
        nResult = 0;
    }
    else
    {
        nResult = nMem / nDen;
    }
    return nResult;
}
