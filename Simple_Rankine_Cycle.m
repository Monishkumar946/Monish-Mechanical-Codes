% Simple Rankine Cycle
% Known Variable Declaration 
% pressure in the Condensor
% Maximum temperature of the cycle aka Boiler temperature
% The pressure in boiler 

p1=input("enter the condensor pressure in bar ");
T3=input("enter the maximum temperature of the cycle ");
p3=input("enter the boiler pressure ");

% the maximum enthalpy before entering the turbine
h1=XSteam('h_pT',p3,T3);
% the maximum entropy at the same point 
s1=XSteam('s_pT',p3,T3);
% as considering the an isoentropic work in the turbine 
s2=s1;
h2=XSteam('h_ps',p1,s2);
% after passing through the condensor the enthalpy of the fluid will be
% working fluid state enthalpy
h3=XSteam('hL_p',p1);
s3=XSteam('sL_p',p1);
% considering isentropic work done in the pump

% as the volume of fluid is multiplied with the pressure difference 
v3=XSteam('vL_p',p1);
wp=v3*((p3-p1)*10^3);

h4=h3+wp;
s4=s3;

wt=h1-h2;

% work required  by the pump and work given by the turbine 
disp("the pump work is =")
disp(wp);
disp('the turbine work is =')
disp(wt);
% calculating the cycle efficiency 
eta=(wt-wp)/(h1-h4);
disp('the cycle effeciency is =')
disp(eta);
disp('the back work ratio is =');
bwr=wp/wt;
disp(bwr);


