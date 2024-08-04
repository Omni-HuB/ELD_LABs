/*
 * main.c
 *
 *  Created on: 19-Dec-2021
 *      Author: shariq20220
 */


#include "xparameters.h"
#include "xaxidma.h"
#include "xio.h"
#include "complex.h"


#define N 8
int main()
{
	// First real then imag : Each pair of data is a pair of real and imaginary.

	const float FFT_input[2*N] = {0x41300000,0x41b80000,0x42000000,0x41200000,0x42b60000,0x42bc0000,0x41700000,0x428a0000,
			0x423c0000,0x42c00000,0x42300000,0x41400000,0x42c00000,0x41880000,0x42440000,0x42680000};

	int status;
	int init_addr = XPAR_BRAM_0_BASEADDR;

	// Writing data into the BRAM
	for(int i=0;i<2*N;i++)
	{
		XIo_Out32(init_addr,FFT_input[i]);
		init_addr = init_addr + 4; //Incrementing the address by 4 bytes since we are writing 32 bits data.
	}

	XAxiDma my_dma;
	XAxiDma_Config *my_dma_config;

	//Copying of the configuration information given the base address of the DMA
	my_dma_config = XAxiDma_LookupConfigBaseAddr(XPAR_AXI_DMA_0_BASEADDR);

	//Configuration initialization
	XAxiDma_CfgInitialize(&my_dma,my_dma_config);

	// IP to DMA transfer configuration
	XAxiDma_SimpleTransfer(&my_dma,XPAR_BRAM_0_BASEADDR+sizeof(float)*N*2,sizeof(float )*N*2,XAXIDMA_DEVICE_TO_DMA);

	// DMA to IP transfer configuration
	XAxiDma_SimpleTransfer(&my_dma,XPAR_BRAM_0_BASEADDR,sizeof(float)*N*2,XAXIDMA_DMA_TO_DEVICE);

	// Checking whether the DMA has completed the transfers or not
	status = XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR,0x4) & XAXIDMA_HALTED_MASK;

	 while(status!=1)
	 {
	 status = XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR,0x4) & XAXIDMA_HALTED_MASK;
	 }

	 status = XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR,0x34) & XAXIDMA_HALTED_MASK ;

	 while(status!=1)
		{
		status = XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR,0x34) & XAXIDMA_HALTED_MASK ;
		}
	return 0;
}
