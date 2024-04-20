* Testbench for opamp

.include "opamp.sch"

.param pvt=0

.tran 10n 4u
.dc VIN -1 1 0.01

.meas DC gain MAX v(OUT)/v(IN+)  
.meas TRAN settling_time WHEN v(OUT)=0.99
