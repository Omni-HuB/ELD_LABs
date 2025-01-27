/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include <stdlib.h>
#include <complex.h>


# define N 8

const int rev8[N] = {0,4,2,6,1,5,3,7};

const float complex W[N/2] = { 1-0*I, 0.7071067811865476 - 0.707106781165475*I, 0.0-1*I, -0.7071067811865475-0.7071067811865476*I };

void bitreverse(float complex dataIn[N], float complex dataOut[N])
{
    	bit_reversal: for (int i=0 ; i<N ; i++)
    	{
    		dataOut[i]= dataIn[rev8[i]];
    	}

}

void FFT_Stages(float complex FFT_Input[N], float complex FFT_Output[N])
{

	float complex temp1[N], temp2[N];
	stage1: for(int i=0 ; i<N ; i=i+2)
	{
		temp1[i]= FFT_Input[i]+FFT_Input[i+1];
		temp1[i+1]=FFT_Input[i]-FFT_Input[i+1];
	}

	stage2: for(int i=0 ; i<N ;i=i+4)
	{
		for(int j=0 ; j<2 ; ++j)
		{
			temp2[i+j]=temp1[i+j]+W[2*j]*temp1[i+j+2];
			temp2[i+j+2]= temp1[i+j]- W[2*j]*temp1[i+j+2];
		}
	}

	stage3: for (int i=0 ; i < N/2 ; i++)
	{
		FFT_Output[i]= temp2[i] + W[i]*temp2[i+4];
		FFT_Output[i+4]= temp2[i]- W[i]*temp2[i+4];
	}
}

int main()
{
	const float complex FFT_Input[N] = {11+23*I, 32+10*I, 91+94*I, 15+69*I, 47+96*I, 44+12*I, 96+17*I, 49+58*I};
	float complex FFT_Output[N];
	float complex FFT_rev[N];

	bitreverse(FFT_Input, FFT_rev);
	FFT_Stages(FFT_rev, FFT_Output);
	printf("\nPrinting FFT input\r\n");
	for (int i=0 ; i<N ; i++)
	{
		printf("%f %f \n", crealf(FFT_Input[i]),cimagf(FFT_Input[i]));
	}

	printf("\nPrinting FFT Output \r\n");
	for(int i =0; i<N ; i++)
	{
		printf("%f %f \n", crealf(FFT_Output[i]), cimagf(FFT_Output[i]));
	}

}



