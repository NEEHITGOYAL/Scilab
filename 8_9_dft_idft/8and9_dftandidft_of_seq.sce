// Caption : Program to find the spectral information of discrete time signal
clc ;
close ;
clear ;
xn = input ( "Enter the real input discrete sequence x[n]=") ;
N = length ( xn ) ;
XK = zeros (1 , N ) ;
IXK = zeros (1 , N ) ;
// Code block to find the DFT of the Sequence
for K = 0: N -1
    for n = 0: N -1
        XK ( K +1) = XK ( K +1) + xn ( n +1) *exp( - %i *2* %pi * K * n /N ) ;
    end
end
[phase,db] = phasemag(XK)
disp ( "Discrete Fourier Transform X( k )= ", XK  )
disp ( " Magnitude Spectral Sample s= " ,abs( XK ))
disp ( " Phase Spectral Sample s= ", phase ,)
n = 0:N -1;
K = 0:N -1;
subplot (2 ,2 ,1)
a = gca () ;
a.x_location = "origin";
a.y_location = "origin";
plot2d3 ( "gnn" ,n , xn )
xlabel ( " Time I n d e x n−−−−> " )
ylabel ( " Ampli tude xn−−−−> " )
title ( " D i s c r e t e I n p u t S e q u e n c e " )
subplot (2 ,2 ,2)
a = gca () ;
a.x_location = "origin";
a.y_location = "origin";
plot2d3 ( "gnn" ,K ,abs( XK ) )
xlabel ( " F r e q u e n c y Sample I n d e x K−−−−> " )
ylabel ( " |X(K)|−−−−> " )
title ( " Magni tude Spec t rum " )
subplot (2 ,2 ,3)
a = gca () ;
a.x_location = "origin";
a.y_location = "origin";
plot2d3 ( "gnn" ,K , phase )
xlabel ( " F r e q u e n c y Sample I n d e x K−−−−> " )
ylabel ( "<X(K) i n r a di a n s −−−−> " )
title ( " Phase Spec t rum " )
// Code block to find the IDFT of the sequence
for n = 0: N -1
    for K = 0: N -1
        IXK ( n +1) = IXK ( n +1) + XK ( K +1) * exp ( %i *2* %pi * K *n/ N ) ;
    end
end
IXK = IXK / N;
ixn = real(IXK) ;
subplot (2 ,2 ,4)
a = gca () ;
a.x_location = "origin";
a.y_location = "origin";
plot2d3 ( "gnn",[0:N-1] , ixn )
xlabel ( " Discrete Time Index n −−−−> " )
ylabel ( " Amplitude x [ n]−−−−> " )
title ( " IDFT s e q u e n c e " )
//Example
//
// E n t e r t h e r e a l i n p u t d i s c r e t e s e q u e n c e x [ n
//] = [ 1 , 2 , 3 , 4 ]
//
// D i s c r e t e F o u r i e r T ran sfo rm X( k )=
//
// 1 0 . − 2 . + 2 . i − 2 . − 9 . 7 9 7D−16 i − 2 . − 2 . i
//
// Magni tude S p e c t r a l Sample s=
//
// 1 0 . 2 . 8 2 8 4 2 7 1 2 . 2 . 8 2 8 4 2 7 1
//
// Phase S p e c t r a l Sample s=
//
// 0 . 1 3 5 . 1 8 0 . 2 2 5 .
