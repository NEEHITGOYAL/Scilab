//PROGRAM TO COMPUTE CIRCULAR CONVOLUTION OF TWO SEQUENCES USING BASIC EQUATION
clc;
clear;
close;
x=input("Enter The Input Sequence=")
//x=[1122]
m=length(x);
xl=input("Enter The Lower Indexof Input Sequence=")//0
xh=xl+m-1;
n=xl:1:xh;
subplot(3,1,1);
a=gca();
a.x_location="origin";
a.y_location="origin";
a.foreground=5;
a.font_color=5;
a.font_style=5;
plot2d3("gnn",n,x);
title("InputSequencex[n]");
xlabel("Samplesn");
ylabel("Amplitude");

h=input("Enter The Impulse Response Sequence=");//h=[1234]
l=length(h);
hl=input("Enter The Lower Index Of Impulse Response=");//0
hh=hl+l-1;
g=hl:1:hh;
subplot(3,1,2);
a=gca();
a.x_location="origin";
a.y_location="origin";
a.foreground=5;
a.font_color=5;
a.font_style=5;
plot2d3("gnn",g,h);
title("Impulse Response Sequence[n]");
xlabel("Samples n");
ylabel("Amplitude");


//for making length of both signals equal
N = max(m,l) ;
p = m - l ;
if(p>=0) then
    h =[h, zeros(1 , p)];
 else
    x =[x, zeros(1 , -p)];
 end
 for i=1:N
     y(i)=0;
     for j=1:N
         k=i-j+1;
         if(k<=0)
             k= k+N ;
         end
         y(i)=y(i)+(x(j)*h(k)) ;
     end
 end
disp("Circular Convolution By Equation Is Y[n]:");
disp(y);
nx=xl+hl;
r=nx:length(y)-1;
subplot(3,1,3);
a=gca();
a.x_location="origin";
a.y_location="origin";
a.foreground=5;
a.font_color=5;
a.font_style=5;
plot2d3("gnn",r,y);
title("Output Response Sequence of Circular Convolution y[n] using Basic Equation");
xlabel("Samples n");
ylabel("Amplitude");

//INPUT:
//Enter the input sequence = [1122]
//Enter the lower index of input sequence = 0
//Enter the impulse response sequence = [1234]
//Enter the lower index of impulse response sequence
// = 0

//OUTPUT:
//Circular convolution by equation is y[n]:

//15.
//17.
//15.
//13.
