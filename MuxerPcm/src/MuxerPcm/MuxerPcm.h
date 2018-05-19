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
     * ���Ʒ�ֵ�� 16λ�з�����
     */
    Int16 LimAmp(Int32 nSum);

    /*
     * ֱ�ӵ��ӷ�
     */
    Int32 Sum(Int16 nSrc1, Int16 nSrc2, Int16 nSrc3, Int16 nSrc4);

    /*
     * ��Ȩƽ����
     */
    Int32 AAW(Int16 nSrc1, Int16 nSrc2, Int16 nSrc3, Int16 nSrc4);

    /*
     * �Զ���Ȩ�ط� (�ο����� <<��ý������еĿ���ʵʱ����Ӧ���������о�>> ���ǡ���ΰ����Ҷ����, 2005 ���ѧ��)
     *
     * ��ʽ��y = (sgn(a)*a^2 + sgn(b)*b^2 + sgn(c)*c^2 )/(abs(a) + abs(b) + ads(c))
     * ���� sgn(a)��ʾ����a�ķ��ţ�abs(a)��ʾa�ľ���ֵ
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
