//
// Created by 909845 on 2018/5/19.
//

#ifndef MUXERPCM_MUXERPCM_H
#define MUXERPCM_MUXERPCM_H


#include <cstdio>
#include "../Public/Type.h"

using namespace std;

class MuxerPcm
{
public:
    MuxerPcm();

    virtual ~MuxerPcm();

public:
    void Muxer();

private:
    /*
     * 限制幅值到 16位有符号数
     */
    Int16 LimAmp(Int32 nSum);

    /*
     * 直接叠加法
     */
    Int32 Sum(Int16 nSrc1, Int16 nSrc2, Int16 nSrc3, Int16 nSrc4);

    /*
     * 加权平均法
     */
    Int32 AAW(Int16 nSrc1, Int16 nSrc2, Int16 nSrc3, Int16 nSrc4);

    /*
     * 自对齐权重法 (参考文献 <<多媒体会议中的快速实时自适应混音方案研究>> 樊星、顾伟康、叶秀清, 2005 软件学报)
     *
     * 公式：y = (sgn(a)*a^2 + sgn(b)*b^2 + sgn(c)*c^2 )/(abs(a) + abs(b) + ads(c))
     * 其中 sgn(a)表示数字a的符号，abs(a)表示a的绝对值
     */
    Int32 ASW(Int16 nSrc1, Int16 nSrc2, Int16 nSrc3, Int16 nSrc4);

private:
    FILE* pF1 = nullptr;
    FILE* pF2 = nullptr;
    FILE* pF3 = nullptr;
    FILE* pF4 = nullptr;
    FILE* pMux = nullptr;
};


#endif //MUXERPCM_MUXERPCM_H
