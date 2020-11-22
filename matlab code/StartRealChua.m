%----------StartRealChua.m----------
[t,y1] = ode45(@RealChua,[0 0.05],[-0.3 -0.6 0]);
[t,y2] = ode45(@RealChua,[0 0.05],[-0.4 -0.5 0]);
[t,y3] = ode45(@RealChua,[0 0.05],[-0.2 -0.7 0]);
[t,y4] = ode45(@ControlRealChua,[0 0.05],[-0.3 -0.6 0]);
[t,y5] = ode45(@ControlRealChua,[0 0.05],[-0.4 -0.5 0]);
[t,y6] = ode45(@ControlRealChua,[0 0.05],[-0.2 -0.7 0]);

figure(1)
clf
subplot(2,1,1)
t = linspace(0,0.05,length(y1));
plot3(y1(:,1),y1(:,2),y1(:,3), y2(:,1),y2(:,2),y2(:,3), y3(:,1),y3(:,2),y3(:,3))
title('uncontroled')
xlabel('x') 
ylabel('y') 
zlabel('z') 
subplot(2,1,2)
t = linspace(0,0.05,length(y4));
plot3(y4(:,1),y4(:,2),y4(:,3), y5(:,1),y5(:,2),y5(:,3), y6(:,1),y6(:,2),y6(:,3))
title('controled')
xlabel('x') 
ylabel('y') 
zlabel('z')

figure(2)
clf
subplot(2,1,1)
t = linspace(0,0.05,length(y1));
plot(t,y1)
title('uncontroled')
xlabel('time') 
ylabel('x,y,z') 
subplot(2,1,2)
t = linspace(0,0.05,length(y4));
plot(t,y4)
title('controled')
xlabel('time') 
ylabel('x,y,z') 

figure(3)
clf
subplot(3,2,1)
t = linspace(0,0.05,length(y1));
plot(t,y1)
title('uncontroled')
xlabel('time') 
ylabel('x,y,z') 
subplot(3,2,2)
t = linspace(0,0.05,length(y4));
plot(t,y4)
title('controled')
xlabel('time') 
ylabel('x,y,z') 
subplot(3,2,3)
t = linspace(0,0.05,length(y2));
plot(t,y2)
title('uncontroled')
xlabel('time') 
ylabel('x,y,z') 
subplot(3,2,4)
t = linspace(0,0.05,length(y5));
plot(t,y5)
title('controled')
xlabel('time') 
ylabel('x,y,z') 
subplot(3,2,5)
t = linspace(0,0.05,length(y3));
plot(t,y3)
title('uncontroled')
xlabel('time') 
ylabel('x,y,z') 
subplot(3,2,6)
t = linspace(0,0.05,length(y6));
plot(t,y6)
title('controled')
xlabel('time') 
ylabel('x,y,z') 
