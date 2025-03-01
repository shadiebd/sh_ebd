%% We want to plot the velocity against t using two different methods(analytical and numerical)
%analytical method
m=68.1; %kg
c=12.5; %kg/s
g=9.81; %m/s^2
t=linspace(0,20,11); %time (time step=2seconds)
D=exp(-t*c/m);
v_analytical=(g-g*D)*(m/c) %velocity
plot(t,v_analytical,'r')
hold on % We use this to plot the two figures in one plot
%Numerical method(Euler's method)
t=linspace(0,20,11);
m=68.1; %kg
c=12.5;%kg/s
g=9.81; %m/s^2
v_numerical=zeros(size(t));
v_numerical(1)=0; %velocity at t=0
for i=1:length(t)-1
    f=g-(v_numerical(i)*c/m);
    h=t(i+1)-t(i);
    v_numerical(i+1)=v_numerical(i)+f*h; %velocity in Euler's method
end
plot(t,v_numerical,'g')
xlabel('Time(s)')
ylabel('Velocity(m/s)')
legend('Analytical','Numerical')
title('Velocity vs Time')
