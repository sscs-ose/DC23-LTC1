v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 40 120 40 {
lab=IN}
N 20 -90 20 40 {
lab=IN}
N 20 -90 120 -90 {
lab=IN}
N 160 -60 160 10 {
lab=OUT}
N 160 40 270 40 {
lab=VSS}
N 270 40 270 110 {
lab=VSS}
N 160 110 270 110 {
lab=VSS}
N 160 70 160 110 {
lab=VSS}
N 160 -90 240 -90 {
lab=VDD}
N 240 -170 240 -90 {
lab=VDD}
N 160 -170 240 -170 {
lab=VDD}
N 160 -170 160 -120 {
lab=VDD}
N -70 -30 20 -30 {
lab=IN}
N 160 -30 260 -30 {
lab=OUT}
C {symbols/nfet_03v3.sym} 140 40 0 0 {name=M1
L=1u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 140 -90 0 0 {name=M2
L=1u
W=0.8u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/iopin.sym} -40 -210 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 40 -210 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 0 -180 0 0 {name=p3 lab=IN}
C {devices/opin.sym} 40 -180 0 0 {name=p4 lab=OUT}
C {devices/lab_pin.sym} -70 -30 0 0 {name=p5 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 160 -170 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 160 110 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 260 -30 0 1 {name=p8 sig_type=std_logic lab=OUT}
