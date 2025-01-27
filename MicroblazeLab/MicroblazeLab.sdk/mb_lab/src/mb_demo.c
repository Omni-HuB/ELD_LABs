/*
 * mb_demo.c
 *
 *  Created on: 09-Dec-2021
 *      Author: dipga
 */


#include <xparameters.h>
#include <xaxidma.h>
#include <xio.h>

int main()
{
	int input_data[] = {4,9,16,20,40,55,76};
	int init_addr = XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR;
	for (int i = 0 ;  i< 8 ; i++)
	{
		XIo_Out32(init_addr, input_data[i]); // Sending the input data to the BRAM one by one
		init_addr = init_addr + 4; // since we have 32 bits of data hence incrementing by 4
		// Block RAM is byte addressable
	}

	XAxiDma my_DMA; // Defining structure for DMA
	XAxiDma_Config *my_DMA_config; // Structure created for DMA configuration
	my_DMA_config = XAxiDma_LookupConfigBaseAddr(XPAR_AXI_DMA_0_BASEADDR); // DMA initial adress configured
	XAxiDma_CfgInitialize(&my_DMA, my_DMA_config); // We have got all the information making the DMA work

	// From BRAM to DMA
	XAxiDma_SimpleTransfer(&my_DMA, XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 8*sizeof(int), 8*sizeof(int), XAXIDMA_DEVICE_TO_DMA);
	// Avoiding overwriting the input data written into the BRAM by writing after 2*sizeof(int) location
	// From the BRAM to the IP
	XAxiDma_SimpleTransfer(&my_DMA, XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR, 8*sizeof(int), XAXIDMA_DMA_TO_DEVICE);
	//u32 XAxiDma_SimpleTransfer(XAxiDma *InstancePtr, UINTPTR BuffAddr, u32 Length, int Direction);

	// check it sqrt completed
	// Checking the registers on the DMA to check if the transfers have been completed or not.
	int status = XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR , 0x4)&XAXIDMA_HALTED_MASK;
	// This is status for MM2S -> Tells whether the DMA to sqrt has been completed or not

// TODO : Check this part from the lab and see the theory behind this (AELD Playlist video 42 : 20 minutes onwards)
	while (status != 1)
	{
		status = XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR , 0x4)&XAXIDMA_HALTED_MASK;
	}
	status = XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR , 0x34)&XAXIDMA_HALTED_MASK;

	// This is status for S2MM -> Tells whether DMA to BRAM transfer has been completed or not.
	while (status != 1)
	{
		status = XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR , 0x34)&XAXIDMA_HALTED_MASK;
	}
	return 0;
}

