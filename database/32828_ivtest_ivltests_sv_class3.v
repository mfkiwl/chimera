// This program was cloned from: https://github.com/steveicarus/ivtest
// License: GNU General Public License v2.0


/*
 * This tests a trivial class. This tests that properties can be
 * given types, and that the types behave properly.
 */
program main;

   // Trivial example of a class
   class foo_t ;
      shortint signed a;
      shortint unsigned b;
   endclass : foo_t // foo_t

   foo_t obj;

   initial begin
      obj = new;

      // This is the most trivial assignment of class properties.
      obj.a = 'hf_ffff;
      obj.b = 'hf_ffff;

      if (obj.a != -1 || obj.b != 65535) begin
	 $display("FAILED -- assign to object: obj.a=%0d, obj.b=%0d", obj.a, obj.b);
	 $finish;
      end

      obj.a = obj.a + 1;
      obj.b = obj.b + 1;
      if (obj.a != 0 || obj.b != 0) begin
	 $display("FAILED -- increment properties: obj.a=%0d, obj.b=%0d", obj.a, obj.b);
	 $finish;
      end

      $display("PASSED");
      $finish;
   end
endprogram // main
