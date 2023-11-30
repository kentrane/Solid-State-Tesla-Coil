%% Calculations for power losses in tesla coil
%Using MOSFET power losses and how they affect power-supply efficiency by
%TI for reference
%Using mosfet IPW60R099P6XKSA1

V_in = 230*sqrt(2);
f_sw = 500e3; % Approx for now
R_ds_max = 99e-3; % 99mOhm -> increases to 0.232ohm at 150 degrees so keep cool!
R_ds_150 = 0.232;
Q_g = 70e-9; % 70 nC
E_oss = 8.8e-6;
i_out = 20;
R_g_internal = 1;

V_sd = 0.9;
Q_gs = 20e-9;
Q_gd = 25e-9;
I_G = 3; %Approx 3-4Amps gate current with Adum4221
%for one mosfet, each mosfet conducts for 180 degrees
P_con = R_ds_max * 0.5 * (i_out^2);
P_sw = V_in * i_out * f_sw * ((Q_gs+Q_gd)/2)

P_drv = (15*Q_g*f_sw)/2