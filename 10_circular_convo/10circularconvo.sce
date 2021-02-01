//PROGRAMTOCOMPUTECIRCULARCONVOLUTIONOFTWOSEQUENCESUSINGBASICEQUATION
clc;
clear;
close;
x=input("Entertheinputsequence=")
//x=[1122]
m=length(x);
xl=input("Enterthelowerindexofinputsequence=")//0
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

h=input("Entertheimpulseresponsesequence=");//h=[1234]
l=length(h);
hl=input("Enterthelowerindexofimpulseresponse=");//0
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
title("ImpulseResponseSequenceh[n]");
xlabel("Samplesn");
ylabel("Amplitude");


//formakinglengthofbothsignalsequal
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
disp("Circularconvolutionbyequationisy[n]:");
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
title("OutputResponseSequenceofCircularConvolutiony[n]usingBasicEquation");
xlabel("Samplesn");
ylabel("Amplitude");

//INPUT:
//Entertheinputsequence=[1122]
//Enterthelowerindexofinputsequence=0
//Entertheimpulseresponsesequence=[1234]
//Enterthelowerindexofimpulseresponsesequence
//=0


//OUTPUT:
//Circularconvolutionbyequationisy[n]:

//15.
//17.
//15.
//13.
