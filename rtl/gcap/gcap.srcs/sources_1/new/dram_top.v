`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2020 12:28:18 AM
// Design Name: 
// Module Name: dram_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module dram_top(
        // RAM interface
        inout [7:0]dq,          // Main RAM data bus
        // Control signals for RAM
        inout rwds,             // Read/Write data strobe. Handshaking signal
        output rclk,            // DRAM differential clock (CK)
        output rnclk,           // DRAM differential clock (CK#)
        output rcs,             // DRAM chip select
        // Operation types
        input rw,               // Read/Write bit
        input as,               // Address space bit (0 is memory, 1 is register)
        input burst,            // 0 for wrapped burst, 1 for linear burst
        // Address info
        input [12:0]row,        // The row in the chip to read (8192 per chip)
        input [5:0]hpage,       // The half page in the row to read (64 per row)
        input [2:0]word,        // The word in the half page to read (8 words per hpage)
        
        // Module Interface
        input [15:0]din,        // Data input to the module
        output reg [15:0]dout,  // Data output from the module
        input cs,               // Activate the module
        output datrdy           // Read: High when data is ready on dout. Write: High when ready for another byte
    );
endmodule
