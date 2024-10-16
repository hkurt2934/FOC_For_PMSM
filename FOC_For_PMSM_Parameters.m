
Rs = 2.98;                   %Resistance Rs
Ld = 7e-2;                   %Inductance Ld
Lq = 7e-2;                   %Inductance Lq
L = Ld;
flux = 0.125;                %flux
p = 2;                       %motor pole
Te = 1.5*p*flux;             %Electric momen
J = 0.47e-4;                 %Inertia momen
B = 11e-5;                   %Friction constant
Idref = 0;                   
speed_ref = 500;
%PI current-control loop
Ts = 0.008;                  %Settling time  
zeta = 1; %damping ratio
wn = 5*zeta/Ts; %natural frequency of current loop 
Kcq = (2*zeta*wn*L) - Rs; 
t_iq = (2*zeta*L*wn-Rs) / (wn^2 * L);
%PI speed-control loop
wns = wn/10; %natural frequency of speed loop
Kcs = ((2*zeta*wns) - (B/J)) / ((1.5 *(p^2)*flux)/J);
t_is = (2*zeta*wns -(B/J))/(wns^2);
