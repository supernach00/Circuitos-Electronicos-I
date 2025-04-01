
clc
clear
% emisor común
% constantes:
R_e = 560;
V_cc = 12;
R_c = 6800;
beta = 200;
f_T = 270E6
c_mu = 4E-12;
c_pi =cpi(c_mu,f_T);

V_e = 12*((8200)/(8200+33000+58000))-0.7
I_cq = V_e/R_e
V_ce = V_cc - I_cq*R_c
gm = I_cq/26E-3
r_pi = rpi(beta, I_cq)
R1 = paralelo(100,r_pi,8200,33000)
R2 = paralelo(22000,6800)

A_v = -(gm*R2*R1)/(1000+R1)

Rpicero = paralelo(1000,R1)
Rmucero = Rpicero*(1+gm*R2)+R2

a_1 = c_pi*Rpicero + c_mu*Rmucero
w_H = 1/a_1
f_H = w_H /(2*pi)
t_r = 0.35/f_H
