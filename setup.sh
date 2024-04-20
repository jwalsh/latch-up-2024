#!/bin/sh
# This is a shell archive (produced by GNU sharutils 4.15.2).
# To extract the files from this archive, save it to some FILE, remove
# everything before the '#!/bin/sh' line above, then type 'sh FILE'.
#
# Made on 2023-04-20 19:30:00 UTC by j@wal.sh
# Source directory was '/home/j/lc-wifi-rf-frontend-design'
#
# Existing files will *not* be overwritten unless '-c' is specified.
#
# This shar contains:
# length mode       name
# ------ ---------- ------------------------------------------
#    345 -rw-rw-r-- lc-wifi-rf-frontend-design/README.org
#    102 -rw-rw-r-- lc-wifi-rf-frontend-design/Week 1/lna_design.sp
#    106 -rw-rw-r-- lc-wifi-rf-frontend-design/Week 1/mixer_design.sp
#    102 -rw-rw-r-- lc-wifi-rf-frontend-design/Week 1/vco_design.sp
#    110 -rw-rw-r-- lc-wifi-rf-frontend-design/Week 1/rf_frontend.sp
#    101 -rw-rw-r-- lc-wifi-rf-frontend-design/Week 2/tape_out_prep.tcl
#     59 -rw-rw-r-- lc-wifi-rf-frontend-design/Week 2/test_plan.org
#
saveFiles()
{
  mkdir -p "lc-wifi-rf-frontend-design"
  mkdir -p "lc-wifi-rf-frontend-design/Week 1"
  mkdir -p "lc-wifi-rf-frontend-design/Week 2"
  
  cat <<SHAR_EOF > "lc-wifi-rf-frontend-design/README.org"
# RF Front-end Receiver Design for 2.4GHz/5GHz WiFi Application

This course covers the design of an RF front-end receiver for 2.4GHz and 5GHz WiFi applications using open-source tools and the Skywater PDK.

## Week 1: RF Front-end Receiver Design

- Understand the components of an RF front-end receiver (LNA, Mixer, VCO)
- Design and simulate an RF front-end receiver for 2.4GHz and 5GHz WiFi applications
- Achieve dual gain mode (5dB/30dB) and optimize noise figure and IIP3 performance

## Week 2: Tape-out and Testing

- Prepare the RF front-end receiver design for tape-out using efabless open-source tools and Skywater PDK
- Understand the tape-out process and requirements
- Plan for testing and characterization of the fabricated chip
SHAR_EOF

  cat <<SHAR_EOF > "lc-wifi-rf-frontend-design/Week 1/lna_design.sp"
* LNA design and simulation for 2.4GHz and 5GHz WiFi applications
* Optimize for gain, noise figure, and linearity
SHAR_EOF

  cat <<SHAR_EOF > "lc-wifi-rf-frontend-design/Week 1/mixer_design.sp"
* Mixer design and simulation for 2.4GHz and 5GHz WiFi applications
* Optimize for conversion gain, noise figure, and linearity
SHAR_EOF

  cat <<SHAR_EOF > "lc-wifi-rf-frontend-design/Week 1/vco_design.sp"
* VCO design and simulation for 2.4GHz and 5GHz WiFi applications
* Optimize for phase noise, tuning range, and power consumption
SHAR_EOF

  cat <<SHAR_EOF > "lc-wifi-rf-frontend-design/Week 1/rf_frontend.sp"
* Integration of LNA, Mixer, and VCO for the RF front-end receiver
* Optimize the overall performance and ensure proper interfacing between components
SHAR_EOF

  cat <<SHAR_EOF > "lc-wifi-rf-frontend-design/Week 2/tape_out_prep.tcl"
# Tape-out preparation script for the RF front-end receiver design
# Using efabless open-source tools and Skywater PDK
SHAR_EOF

  cat <<SHAR_EOF > "lc-wifi-rf-frontend-design/Week 2/test_plan.org"
* Test plan for the fabricated RF front-end receiver chip
* Characterization of key performance metrics
SHAR_EOF
}

saveFiles
