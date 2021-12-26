clc;
clear all; 
R = [0.1116 0.8799 -0.4618 ; -0.6330 0.4212 0.6495; 0.7660 0.2198 0.6040];
Rd = [-0.0594 0.7713 0.6337 ; 0.3368 0.6131 -0.7146; -0.9397 0.1710 -0.2962];
ER = R - Rd;
IR = 30*ER;
Ew = 0.0004*IR+ER;
[t1,x1] = ode45(@modelEwfeedback,[0,30],[IR(1,1),ER(1,1),Ew(1,1)]);
[t2,x2] = ode45(@modelEwfeedback,[0,30],[IR(1,2),ER(1,2),Ew(1,2)]);
[t3,x3] = ode45(@modelEwfeedback,[0,30],[IR(1,3),ER(1,3),Ew(1,3)]);
[t4,x4] = ode45(@modelEwfeedback,[0,30],[IR(2,1),ER(2,1),Ew(2,1)]);
[t5,x5] = ode45(@modelEwfeedback,[0,30],[IR(2,2),ER(2,2),Ew(2,2)]);
[t6,x6] = ode45(@modelEwfeedback,[0,30],[IR(2,3),ER(2,3),Ew(2,3)]);
[t7,x7] = ode45(@modelEwfeedback,[0,30],[IR(3,1),ER(3,1),Ew(3,1)]);
[t8,x8] = ode45(@modelEwfeedback,[0,30],[IR(3,2),ER(3,2),Ew(3,2)]);
[t9,x9] = ode45(@modelEwfeedback,[0,30],[IR(3,3),ER(3,3),Ew(3,3)]);

figure(2)
plot(t1,x1(:,2))
ylabel('ER')
xlabel('time')
title('The trajectory of ER with Ew feedback only')
hold on
plot(t2,x2(:,2))
hold on
plot(t3,x3(:,2))
hold on
plot(t4,x4(:,2))
hold on
plot(t5,x5(:,2))
hold on
plot(t6,x6(:,2))
hold on
plot(t7,x7(:,2))
hold on
plot(t8,x8(:,2))
hold on
plot(t9,x9(:,2))
hold on

figure(3)
plot(t1,x1(:,3))
ylabel('Ew')
xlabel('time')
title('The trajectory of Ew with Ew feedback only')
hold on
plot(t2,x2(:,3))
hold on
plot(t3,x3(:,3))
hold on
plot(t4,x4(:,3))
hold on
plot(t5,x5(:,3))
hold on
plot(t6,x6(:,3))
hold on
plot(t7,x7(:,3))
hold on
plot(t8,x8(:,3))
hold on
plot(t9,x9(:,3))
hold on

[t1,x1] = ode45(@modelHinfinity,[0,30],[IR(1,1),ER(1,1),Ew(1,1)]);
[t2,x2] = ode45(@modelHinfinity,[0,30],[IR(1,2),ER(1,2),Ew(1,2)]);
[t3,x3] = ode45(@modelHinfinity,[0,30],[IR(1,3),ER(1,3),Ew(1,3)]);
[t4,x4] = ode45(@modelHinfinity,[0,30],[IR(2,1),ER(2,1),Ew(2,1)]);
[t5,x5] = ode45(@modelHinfinity,[0,30],[IR(2,2),ER(2,2),Ew(2,2)]);
[t6,x6] = ode45(@modelHinfinity,[0,30],[IR(2,3),ER(2,3),Ew(2,3)]);
[t7,x7] = ode45(@modelHinfinity,[0,30],[IR(3,1),ER(3,1),Ew(3,1)]);
[t8,x8] = ode45(@modelHinfinity,[0,30],[IR(3,2),ER(3,2),Ew(3,2)]);
[t9,x9] = ode45(@modelHinfinity,[0,30],[IR(3,3),ER(3,3),Ew(3,3)]);

figure(5)
plot(t1,x1(:,2))
ylabel('ER')
xlabel('time')
title('The trajectory of ER with Hinfinity feedback only')
hold on
plot(t2,x2(:,2))
hold on
plot(t3,x3(:,2))
hold on
plot(t4,x4(:,2))
hold on
plot(t5,x5(:,2))
hold on
plot(t6,x6(:,2))
hold on
plot(t7,x7(:,2))
hold on
plot(t8,x8(:,2))
hold on
plot(t9,x9(:,2))
hold on

figure(6)
plot(t1,x1(:,3))
ylabel('Ew')
xlabel('time')
title('The trajectory of Ew with Hinfinity feedback only')
hold on
plot(t2,x2(:,3))
hold on
plot(t3,x3(:,3))
hold on
plot(t4,x4(:,3))
hold on
plot(t5,x5(:,3))
hold on
plot(t6,x6(:,3))
hold on
plot(t7,x7(:,3))
hold on
plot(t8,x8(:,3))
hold on
plot(t9,x9(:,3))
hold on
