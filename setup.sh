#+begin_src sh :results output verbatim replace
#!/bin/sh
# This is a shell archive (produced by GNU sharutils 4.15.2).
# To extract the files from this archive, save it to some FILE, remove
# everything before the '#!/bin/sh' line above, then type 'sh FILE'.
#
# Made on 2023-04-20 17:00 UTC by j@wal.sh
# Source directory was '/home/j/src'
#
# Existing files will *not* be overwritten unless '-c' is specified.
#
# This shar contains:
# length mode       name
# ------ ---------- ------------------------------------------
#    236 -rw-rw-r-- cace-analog-mixed-signal-course-2w/README.org
#    141 -rw-rw-r-- cace-analog-mixed-signal-course-2w/Makefile
#    174 -rw-rw-r-- cace-analog-mixed-signal-course-2w/setup.tcl
#    107 -rw-rw-r-- cace-analog-mixed-signal-course-2w/example/opamp.sch
#     94 -rw-rw-r-- cace-analog-mixed-signal-course-2w/example/opamp_tb.sp
#     61 -rw-rw-r-- cace-analog-mixed-signal-course-2w/gds/README
#
save_IFS="${IFS}"
IFS="${IFS}:"
getdir=`pwd`
D=`dirname $0`
test ! -d "${D}" && D="${getdir}"
if test "${D}" != "."; then
  UUDIR=`cd "${D}" ; pwd`
else
  UUDIR="${getdir}"
fi
IFS="$save_IFS"
if test -d ${UUDIR}/cace-analog-mixed-signal-course-2w; then
	echo shar: will not over-write existing file ${UUDIR}/cace-analog-mixed-signal-course-2w
else
mkdir -p ${UUDIR}/cace-analog-mixed-signal-course-2w
fi
cd ${UUDIR}/cace-analog-mixed-signal-course-2w
if test -f 'README.org' && test "$first_param" != -c; then
	echo shar: will not over-write existing file 'README.org'
else
cat << \SHAR_EOF > 'README.org'
* CACE Analog/Mixed-Signal Design Flow

This two-week course covers the open source analog and mixed-signal design flow using the CACE system.

** Topics
- Introduction to open source PDKs and tools 
- Overview of the CACE design flow
- Specifying circuit performance requirements
- Simulating over PVT corners with ngspice
- Generating datasheets with performance metrics
- Laying out analog circuits with magic
- Integrating analog blocks into larger mixed-signal designs
- Case studies and examples

** Suggested Exercises
- Specify and simulate a basic opamp design
- Generate a performance report for the opamp
- Create a layout for the opamp 
- Integrate the opamp into a mixed-signal design
- Analyze the impact of PVT variations

** Questions
- What are the key components of the CACE design flow?
- How does CACE help with specifying analog performance?  
- What tools are used for simulation and layout in this flow?
- How can you verify an analog design across PVT corners?
- What are best practices for analog circuit layout?
SHAR_EOF
fi # end of overwriting check
if test -f 'Makefile' && test "$first_param" != -c; then
	echo shar: will not over-write existing file 'Makefile'
else
cat << \SHAR_EOF > 'Makefile'
# Makefile

all: sim layout

sim:
	cace simulate ${DESIGN} --output ${DESIGN}.json
	cace report ${DESIGN}.json --format pdf --output ${DESIGN}_datasheet.pdf

layout:  
	magic -noconsole -dnull -rcfile ${PDK_ROOT}/magic/${PDK}.magicrc ${DESIGN}.mag	
SHAR_EOF
fi # end of overwriting check
if test -f 'setup.tcl' && test "$first_param" != -c; then
	echo shar: will not over-write existing file 'setup.tcl'
else
cat << \SHAR_EOF > 'setup.tcl'
# Setup script  

set DESIGN opamp
set PDK sky130A

set PDK_ROOT /usr/share/pdk/sky130A

set MAGIC_TECH ${PDK_ROOT}/sky130A.tech  

set NETGEN_SETUP ${PDK_ROOT}/libs.tech/netgen/${PDK}_setup.tcl

set GDS_FILES ${PDK_ROOT}/gds/sky130_fd_sc_hd.gds
SHAR_EOF
fi # end of overwriting check
mkdir example 2> /dev/null
if test -f 'example/opamp.sch' && test "$first_param" != -c; then
	echo shar: will not over-write existing file 'example/opamp.sch'
else
cat << \SHAR_EOF > 'example/opamp.sch'
v {xschem version=3.1.0 file_version=1.2
* Schematic of a basic 2-stage opamp
.subckt opamp IN+ IN- OUT VDD VSS
...
.ends
}
SHAR_EOF
fi # end of overwriting check
if test -f 'example/opamp_tb.sp' && test "$first_param" != -c; then
	echo shar: will not over-write existing file 'example/opamp_tb.sp'
else
cat << \SHAR_EOF > 'example/opamp_tb.sp'
* Testbench for opamp

.include "opamp.sch"

.param pvt=0

.tran 10n 4u
.dc VIN -1 1 0.01

.meas DC gain MAX v(OUT)/v(IN+)  
.meas TRAN settling_time WHEN v(OUT)=0.99
SHAR_EOF
fi # end of overwriting check
mkdir gds 2> /dev/null
if test -f 'gds/README' && test "$first_param" != -c; then
	echo shar: will not over-write existing file 'gds/README'
else
cat << \SHAR_EOF > 'gds/README'
GDS files for the analog blocks used in the course will be placed here.
SHAR_EOF
fi # end of overwriting check
exit 0
#+end_src
