#+BEGIN_SRC sh :tangle setup.shar
#!/bin/sh
# This is a shell archive (produced by GNU sharutils 4.15.2).
# To extract the files from this archive, save it to some FILE, remove
# everything before the '#!/bin/sh' line above, then type 'sh FILE'.
#
# Made on 2023-04-20 by j@wal.sh
#
# Existing files will *not* be overwritten unless '-c' is specified.
#
# This shar contains:
# length mode       name
# ------ ---------- ------------------------------------------
#   1524 -rw-r--r-- ihp-open-source-pdk-course/README.org
#     97 -rw-r--r-- ihp-open-source-pdk-course/analog_design_example.cir
#     55 -rw-r--r-- ihp-open-source-pdk-course/digital_design_example.v
#
save_IFS="${IFS}"
IFS="${IFS}:"
getdir=`pwd`
D=`dirname $0`
test ! -d "${D}" && D="${getdir}"
if test "${D}" != "`pwd`"
then
  cd "${D}"
fi
IFS="$save_IFS"
if test ! -d 'ihp-open-source-pdk-course'
then
	mkdir 'ihp-open-source-pdk-course'
fi
cd 'ihp-open-source-pdk-course'
if test -f 'README.org'
then
	echo shar: will not over-write existing file "'README.org'"
else
cat << \SHAR_EOF > 'README.org'
* IHP Open Source PDK Course

** Course Overview
This two-week course focuses on the SG13G2 Open Source PDK for IHP 130nm BiCMOS technology. The course covers the current state of activities for both analog and digital PDK, including the design flow using open source tools.

** Topics Covered
- Introduction to IHP 130nm BiCMOS technology and SG13G2 Open Source PDK
- Analog PDK: Schematic driven design, simulation, layout, DRC, and LVS
- Digital PDK: Design flow and open source tools
- Challenges and open issues in analog and digital design flow
- Future roadmap for the open source PDK

** Code Examples
1. Analog Design Example: [[file:analog_design_example.cir][analog_design_example.cir]]
2. Digital Design Example: [[file:digital_design_example.v][digital_design_example.v]]

** Key Questions
By the end of this course, students should be able to answer the following questions:

1. What are the key features and benefits of the IHP 130nm BiCMOS technology?
2. How does the SG13G2 Open Source PDK enable analog and digital design using open source tools?
3. What are the main steps involved in the analog design flow, from schematic driven design to LVS?
4. What are the primary components of the digital design flow using open source tools?
5. What are some of the challenges and open issues in the current analog and digital design flows using the open source PDK?
6. How does the future roadmap aim to address these challenges and enhance the open source PDK?
SHAR_EOF
fi # end of overwriting check
if test -f 'analog_design_example.cir'
then
	echo shar: will not over-write existing file "'analog_design_example.cir'"
else
cat << \SHAR_EOF > 'analog_design_example.cir'
* Analog Design Example
.subckt analog_example in out vdd vss
R1 in out 1k
C1 out vss 1p 
.ends
SHAR_EOF
fi # end of overwriting check
if test -f 'digital_design_example.v'
then
	echo shar: will not over-write existing file "'digital_design_example.v'"
else
cat << \SHAR_EOF > 'digital_design_example.v'
// Digital Design Example
module digital_example (input a, b, output y);
  assign y = a & b;
endmodule
SHAR_EOF
fi # end of overwriting check
exit 0
#
# end of shar
#+END_SRC
