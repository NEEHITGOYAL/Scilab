// program for linear convolution
clc ;
clf ;
clear all;
x = input ( "Enter the first sequence" ) ;
y = input ( "Enter the second sequence" ) ;
n = convol (x , y ) ;
subplot (2 ,2 ,1) ;
plot2d3 ( x );
title ( "first sequenc" ) ;
xlabel (  "n−−−−−−>" ) ;
ylabel ( "amplitude−−−−>" ) ;
subplot (2 ,2 ,2) ;
plot2d3 ( y );
title ( "second sequence" ) ;
xlabel ( "n−−−−−−>" ) ;
ylabel ( "amplitude−−−−>") ;
subplot (2 ,2 ,3) ;
plot2d3 ( n );
title ( "convolved sequence" ) ;
xlabel ( "n−−−−−−>" ) ;
ylabel ( "amplitude−−−−>" ) ;
disp ( "The convoluted sequence") ;
disp ( n );
