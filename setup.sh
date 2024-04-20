#+BEGIN_SRC shell :results output :exports both
#!/bin/sh
# This is a shell archive (produced by GNU sharutils 4.15.2).
# To extract the files from this archive, save it to some FILE, remove
# everything before the '#!/bin/sh' line above, then type 'sh FILE'.
#
# Made on 2023-05-15 01:38 UTC by <j@wal.sh>.
# Source directory was '/home/j/org/ltc-tiny-tapeout-custom-silicon-open-to-all'.
#
# Existing files will *not* be overwritten, unless '-c' is specified.
#
# This shar contains:
# length mode       name
# ------ ---------- ------------------------------------------
#   1092 -rw-r--r-- ltc-tiny-tapeout-custom-silicon-open-to-all/README.org
#    272 -rw-r--r-- ltc-tiny-tapeout-custom-silicon-open-to-all/tiny_tapeout_intro.v
#    175 -rw-r--r-- ltc-tiny-tapeout-custom-silicon-open-to-all/tiny_tapeout_analog.v
#    336 -rw-r--r-- ltc-tiny-tapeout-custom-silicon-open-to-all/tiny_tapeout_goodies.v
#
save_IFS="${IFS}"
IFS="${IFS}:"
getdir=`pwd`
D=`dirname "$0"`
test ! -d "${D}" && D="${getdir}"
if test "${0}" = "${D}"; then
 cd "${getdir}"
 D=`pwd`
fi
export D
IFS="$save_IFS"
if test ! -d 'ltc-tiny-tapeout-custom-silicon-open-to-all'
then
 mkdir 'ltc-tiny-tapeout-custom-silicon-open-to-all'
fi
cd 'ltc-tiny-tapeout-custom-silicon-open-to-all'
if test -f 'README.org'
then
 echo shar: will not over-write existing file "'README.org'"
else
cat << \SHAR_EOF > 'README.org'
#+TITLE: Tiny Tapeout: Custom Silicon Open to All

* Introduction
Tiny Tapeout is an educational project that makes it easier and cheaper than ever to get your digital designs manufactured on a real chip. In this course, we will explore the capabilities and possibilities of Tiny Tapeout.

* Course Outline
** Week 1: Introduction to Tiny Tapeout
  - Overview of the Tiny Tapeout project
  - Benefits and advantages of custom silicon
  - Introduction to the design process
  - Example code: ~tiny_tapeout_intro.v~

** Week 2: Advanced Features and Possibilities
  - Analog support in Tiny Tapeout
  - Speed improvements and optimizations
  - Exploring additional features and goodies
  - Example code: ~tiny_tapeout_analog.v~, ~tiny_tapeout_goodies.v~

* Learning Objectives
By the end of this course, students should be able to:
1. Understand the benefits and possibilities of custom silicon through Tiny Tapeout
2. Describe the design process for creating a digital design for manufacturing
3. Identify the advanced features and capabilities of Tiny Tapeout, including analog support and speed optimizations
4. Analyze and modify example code to create custom designs for Tiny Tapeout

* Resources
- Tiny Tapeout project website: https://tinytapeout.com/
- Verilog HDL reference: https://www.chipverify.com/verilog/verilog-tutorial
- Open-source silicon design tools: https://www.zerotoasiccourse.com/terminology/open-source-silicon-design/
SHAR_EOF
fi # end of overwriting check
if test -f 'tiny_tapeout_intro.v'
then
 echo shar: will not over-write existing file "'tiny_tapeout_intro.v'"
else
cat << \SHAR_EOF > 'tiny_tapeout_intro.v'
// tiny_tapeout_intro.v

module tiny_tapeout_intro (
 input wire clk,
 input wire rst,
 output reg [7:0] led
);

 always @(posedge clk) begin
   if (rst) begin
     led <= 8'b00000000;
   end else begin
     led <= led + 1;
   end
 end

endmodule
SHAR_EOF
fi # end of overwriting check
if test -f 'tiny_tapeout_analog.v'
then
 echo shar: will not over-write existing file "'tiny_tapeout_analog.v'"
else
cat << \SHAR_EOF > 'tiny_tapeout_analog.v'
// tiny_tapeout_analog.v

module tiny_tapeout_analog (
 input wire [7:0] analog_in,
 output reg [7:0] analog_out
);

 always @(*) begin
   analog_out = analog_in;
 end

endmodule
SHAR_EOF
fi # end of overwriting check
if test -f 'tiny_tapeout_goodies.v'
then
 echo shar: will not over-write existing file "'tiny_tapeout_goodies.v'"
else
cat << \SHAR_EOF > 'tiny_tapeout_goodies.v'
// tiny_tapeout_goodies.v

module tiny_tapeout_goodies (
 input wire clk,
 input wire rst,
 input wire [7:0] data_in,
 output reg [7:0] data_out
);

 // Implement a simple pipeline stage
 reg [7:0] pipeline_reg;

 always @(posedge clk) begin
   if (rst) begin
     pipeline_reg <= 8'b00000000;
   end else begin
     pipeline_reg <= data_in;
   end
 end

 always @(*) begin
   data_out = pipeline_reg;
 end

endmodule
SHAR_EOF
fi # end of overwriting check
exit 0
#+END_SRC
