function dx = modelEwfeedback(t,x)
A = [0, 1, 0; -0.0004, -1, 1; -0.0004, 0.0004-1, -4];
B = [0;0;1];
K = [0 0 5];
u = -K*x;
dx = A*x + B*u;

