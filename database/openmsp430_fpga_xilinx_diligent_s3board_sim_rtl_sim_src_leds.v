// This program was cloned from: https://github.com/olgirard/openmsp430
// License: BSD 3-Clause "New" or "Revised" License

/*===========================================================================*/
/*                                 DIGITAL I/O                               */
/*---------------------------------------------------------------------------*/
/* Test the Digital I/O interface.                                           */
/*===========================================================================*/

initial
   begin
      $display(" ===============================================");
      $display("|                 START SIMULATION              |");
      $display(" ===============================================");
      repeat(5) @(posedge CLK_50MHz);
      stimulus_done = 0;





      stimulus_done = 1;
   end
