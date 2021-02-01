//unit-impulse signal
L = 5;
x1 = [zeros(1,L) 1 zeros(1,L)];
nx1 = -L:L;
subplot(2,4,1)
plot2d3(nx1,x1)

//unit-step signal
L = 10;
x2 = [zeros(1,L) ones(1,L+1)];
nx2 = -L:L;
subplot(2,4,2)
plot2d3(nx2,x2)

//ramp signal
n = 0:10;
x = n;
subplot(2,4,3)
plot2d3(n,x);

//sine signal
x = 0:0.01:2*%pi;
y = sin(x);
subplot(2,4,4)
plot(y)

//cos signal
x = 0:0.01:2*%pi;
y = cos(x);
subplot(2,4,5)
plot(y)

//decreasing expo
a = 0.6;
n = 0:10;
x = a^n
subplot(2,4,6)
plot2d3(x)

//increasing expo
a = 0.6;
n = 10: -1 :0;
x = a^n
subplot(2,4,7)
plot2d3(x)

//signumfunc
t = -5:0.1:5
x = sign(t) ;
subplot(2,4,8)
plot2d(t,x);
