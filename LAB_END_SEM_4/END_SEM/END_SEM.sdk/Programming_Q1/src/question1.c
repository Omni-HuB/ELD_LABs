/*
 * question1.c
 *
 *  Created on: 29-Dec-2021
 *      Author: shariq20220
 */


#include <stdio.h>
#include <stdbool.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include <stdlib.h>
#include <complex.h>
#include <time.h>
#include "xaxidma.h"
#include <xtime_l.h>
#include <math.h>



#define N 10


init_platform();

XAxiDma my_dma;
XAxiDma_Config *my_dma_config;

int init_DMA()
{

	//Copying of the configuration information given the base address of the DMA
	my_dma_config = XAxiDma_LookupConfigBaseAddr(XPAR_AXI_DMA_0_BASEADDR);

	//Configuration initialization
	XAxiDma_CfgInitialize(&my_dma,my_dma_config);

	// IP to DMA transfer configuration
	XAxiDma_SimpleTransfer(&my_dma,XPAR_BRAM_0_BASEADDR+sizeof(float)*N,sizeof(float )*N,XAXIDMA_DEVICE_TO_DMA);

	// DMA to IP transfer configuration
	XAxiDma_SimpleTransfer(&my_dma,XPAR_BRAM_0_BASEADDR,sizeof(float)*N,XAXIDMA_DMA_TO_DEVICE);

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

	 if (XAxiDma_HasSg(&my_dma)) // check whether DMA is in scatter gather mode. If yes, return error
	   {
	         xil_printf("Device configuration as SCATTER GATHER mode\r\n");
	         return XST_FAILURE;
	   }
	return 0;

}



u32 checkIdle(u32 baseAddress, u32 offset) // this function is defined to check whether DMA is busy or not

{ // offset = 0x4 to check for DMA TO Accelerator  transaction channel
    // offset = 0x34 to check for Accelerator To DMA  transaction channel
    u32 status;
    status = (XAxiDma_ReadReg(baseAddress, offset)) & XAXIDMA_IDLE_MASK;   // XAXIDMA_IDLE_MASK;

    return status;
}


int main()
{


	// Choosing 10 arbitrary positive integers to store in BRAM

		const float data_Input[N] = {2,4,6,8,10,12,14,16,18,20};

		int status;
		int init_addr = XPAR_BRAM_0_BASEADDR;

		// Writing data into the BRAM
		for(int i=0;i<N;i++)
		{
			XIo_Out32(init_addr,data_Input[i]);
			init_addr = init_addr + 4; //Incrementing the address by 4 bytes since we are writing 32 bits data.
		}



    // to store the time at which certain processes starts and ends
    XTime tprocessorStart, tprocessorend;

    XTime tfpgaStart, tfpgaend;



    //-------------------- PS PART --------------------------------//
    XTime_GetTime(&tprocessorStart); // getting the time before Accelerator is Done in PS

	int y;
	float  RX_PNTR[N];

		for (int i=0;i<N;i++){

		int sq=sqrt(data_Input[i])	;
		y=ln(1/(sq));

		RX_PNTR[i]=y;

		printf(y);

		}

    XTime_GetTime(&tprocessorend); // getting the time after accelerator is done in PS

    xil_printf("\r\n***Entering main function***\r\n");

    int status_dma = init_DMA(); // initializing the DMA

    if (status_dma != XST_SUCCESS)
    {
        xil_printf("Couldn't initialize DMA\r\n");
        return XST_FAILURE;
    }


     // to store the output from the PL



    bool err_flag = false;    // error flag to check for mismatch between transmitted and received data

    Xil_DCacheFlushRange((UINTPTR)FFT_input,(sizeof(float)*N)); // cache flush to write back the data in the DDR memory

    Xil_DCacheFlushRange((UINTPTR)RX_PNTR,(sizeof(float)*N));

    // status = 2 indicates idle and status = 0 indicates idle

    xil_printf("\nDMA status before transfer\r\nDMA to Device: %d, Device to DMA : % d\r\n ", checkIdle(XPAR_AXI_DMA_0_BASEADDR, 0x4), checkIdle(XPAR_AXI_DMA_0_BASEADDR, 0x34));

    xil_printf("\rStarting Data Transfer------------->>>>>>>>>\r\n");
    int status_transfer;


    XTime_GetTime(&tfpgaStart); // getting the time before FFT is Done in PL


    status_transfer = XAxiDma_SimpleTransfer(&my_dma, (UINTPTR)RX_PNTR, (sizeof(float) * N), XAXIDMA_DEVICE_TO_DMA);
    // transferring data from  Accelerator to DMA
    if (status_transfer != XST_SUCCESS)
    {
        xil_printf("Writing data to ACCELERATOR via DMA failed\r\n");
    }

	xil_printf("DMA status between transfer\nDMA to Device status: %d, Device to DMA status: %d\r\n", checkIdle(XPAR_AXI_DMA_0_BASEADDR, 0x4),checkIdle(XPAR_AXI_DMA_0_BASEADDR, 0x34));

	status_transfer = XAxiDma_SimpleTransfer(&my_dma, (UINTPTR)data_Input,(sizeof(float) * N), XAXIDMA_DMA_TO_DEVICE);
	// receiving data from  DMA. to Accelerator

	if (status_transfer != XST_SUCCESS)
	{
		xil_printf("Reading data from FFT via DMA failed\r\n");
	}

	xil_printf("DMA status after transfer\nDMA to Device status: %d, Device to DMA status: %d\r\n", checkIdle(XPAR_AXI_DMA_0_BASEADDR, 0x4),checkIdle(XPAR_AXI_DMA_0_BASEADDR, 0x34));

	XTime_GetTime(&tfpgaend);                             // getting the time before accelerator is Done in PL

	int status = checkIdle(XPAR_AXI_DMA_0_BASEADDR, 0x4); // DMA to accelerator

	while (status != 2)
	{
		status = checkIdle(XPAR_AXI_DMA_0_BASEADDR, 0x4);
		// xil_printf("status value : %d \n" , status);
	}
	status = checkIdle(XPAR_AXI_DMA_0_BASEADDR, 0x34); // accelerator to DMA
	while (status != 2)
	{
		status = checkIdle(XPAR_AXI_DMA_0_BASEADDR, 0x34);
	}


	xil_printf("DMA status after transfer\nDMA to Device status: %d, Device to DMA status: %d\r\n", checkIdle(XPAR_AXI_DMA_0_BASEADDR, 0x4),checkIdle(XPAR_AXI_DMA_0_BASEADDR, 0x34));
	xil_printf("\nComparing software FFT outputs and hardware accelerator outputs via DMA \r\n");


	xil_printf("\nDMA ran successfully!! :)");

	xil_printf("\n-----------TIME COMPARISION--------------------\n");

	// here we are calculating the time it took for PS and PL to execute a data

	float time_processor = 0;
	time_processor = (float)1.0 * (tprocessorend - tprocessorStart) / (COUNTS_PER_SECOND/1000000);
	xil_printf("time for PS : %d\n" , time_processor);

	float time_fpga = 0;
	time_fpga = (float)1.0 * (tfpgaend - tfpgaStart) / (COUNTS_PER_SECOND/1000000);
	xil_printf("time for PL : %d\n" , time_fpga);

	return XST_SUCCESS;
}

