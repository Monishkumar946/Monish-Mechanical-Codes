% reheat rankine Cycle
% the values required are
% the boiler pressure 
% the condensor pressure 
% the maximum temperature in the cycle 
% the reheat temperature for the cycle 

p1=input("enter the boiler pressure ");
T1=input("enter the maximum cycle temperature ");
p3=input("enter the condensor pressure ");
Tre=input("enter the reheat temperature ");
Pre=input("enter the reheater pressure ");

h1=XSteam('h_pT',p1,T1);
s1=XSteam('s_pT',p1,T1);
s2=s1;
h2=XSteam('h_pS',Pre,s2);
h3=XSteam('h_pT',Pre,Tre);
s3=XSteam('s_pT',Pre,Tre);

%now calculating the values at the entry for the condesor
s4=s3;
h4=XSteam('h_pS',p3,s4);

h5=XSteam('hL_p',p3);
s5=XSteam('sL_p',p3);
v5=XSteam('vL_p',p3);

wp=v5*(p1-p3)*10^2;
h6=h5+wp;
s6=s5;

wt=h1-h2+h3-h4;

qin=h3-h2+h1-h6;

% work done on the pump
disp('the work required by the pump =');
disp(wp);

%work done by the turbine 
disp('the work produced by the turbine =');
disp(wt);

%the rankine cycle efficiency 
eta= (wt-wp)/qin;
disp('the rankine cycle efficiency =');
disp(eta);
