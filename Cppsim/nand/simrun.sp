***** Spice Netlist for Cell 'nand' *****

************** Module nand **************
m0 vout vina n0 gnd
+    cmosn l='0.13u' w='1.0u' m='1'
+    ad='hdout*(1.0u)' as='hdout*(1.0u)'
+    pd='2*hdout+2*(1.0u)' ps='2*hdout+2*(1.0u)'
m1 n0 vinb gnd gnd
+    cmosn l='0.13u' w='1.0u' m='1'
+    ad='hdout*(1.0u)' as='hdout*(1.0u)'
+    pd='2*hdout+2*(1.0u)' ps='2*hdout+2*(1.0u)'
m2 vout vina vdd vdd
+    cmosp l='0.13u' w='1.0u' m='1'
+    ad='hdout*(1.0u)' as='hdout*(1.0u)'
+    pd='2*hdout+2*(1.0u)' ps='2*hdout+2*(1.0u)'
m3 vout vinb vdd vdd
+    cmosp l='0.13u' w='1.0u' m='1'
+    ad='hdout*(1.0u)' as='hdout*(1.0u)'
+    pd='2*hdout+2*(1.0u)' ps='2*hdout+2*(1.0u)'
v0 vina gnd pulse 0 1.3v 0ns 200ps 200ps 2ns 4ns 
v1 vinb gnd pulse 0 1.3v 0ns 200ps 200ps 3ns 6ns 



.param hdout=6.600e-007
.param hdin=7.400e-007
.include '../../../SpiceModels/cmos_013_bsim4.mod'
.include '../../../SpiceModels/bipolar.mod'
.temp 25
.param vsupply=1.3
.global vdd gnd
Vsup vdd 0 'vsupply'
.options post=1 delmax=5p relv=1e-6 reli=1e-6 relmos=1e-6 method=gear
.tran 5p 50n
.op

.end

