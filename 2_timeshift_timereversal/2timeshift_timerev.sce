// Time-shifting of a discrete time sequence

clear;close;clc;
x=input('Enter the squence:= ');
nx=input('Enter the time domain information of sequence:= ');
k=input('enter the shift value:= ');
nx1=nx+k;
nx2=nx-k;
subplot(4,1,1);
a = gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [-5,0;5,5];
plot2d3(nx,x)
title('Original signal');
subplot(4,1,2);
a = gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [-5,0;5,5];
plot2d3(nx1,x)
title('Time shifted right side');
subplot(4,1,3);
a = gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [-5,0;5,5];
plot2d3(nx2,x)
title('Time shifted left side');

//Time Reversal
subplot(4,1,4);
a = gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [-5,0;5,5];
plot2d3(-nx,x);
title('Time Reversed signal');
