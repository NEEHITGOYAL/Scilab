// Ca p tio n : To D e sig n D i g i t a l I IR B u t t e r w o r t h LPF
// Analog c u t o f f f r e q = 1000 Hz , Sampling F req =
//10000 s am pl e s / s e c
// O rde r of I IR f i l t e r N = 2
clc ;
clear ;
xdel ( winsid () ) ;
fc = input ( " Enter cut off freq in Hz f c = " )
fs = input ( " Enter sampling freq in Hz f s = " )
N = input ( " Enter order of Butterworth filter N = " )
Fp = 2* fc / fs ; 
// Pa s s band e dg e f r e q u e n c y i n c y c l e s /sam pl e s
[ Hz ]= iir(N , "lp" , "butt" ,[ Fp /2 ,0] ,[0 ,0]) 
// d i g i t a l I IR B u t t e r wo r t h F i l t e r
 [ Hw , w ] = frmag ( Hz ,256) ;
 subplot (2 ,1 ,1)
 plot (2* w , abs ( Hw ) );
 xlabel ( " No rmali z e d D i g i t a l F r e q u e n c y w−−−> " )
 ylabel ( " Magnitude |H(w)|= " )
 title ( " Magnitude R e s po n s e of I IR LPF " )
 xgrid (1)

 subplot (2 ,1 ,2)
 plot (2* w * fs , abs ( Hw ) ) ;
 xlabel ( " Analog F r e q u e n c y i n Hz f −−−> " )
 ylabel ( " Magnitude |H(w)|= " )
 title ( " Magnitude R e s po n s e of I IR LPF " )
 xgrid (1)
 //Example
 //
 // Enter c ut off freq in Hz f c =1000
 //
 // Enter s ampling freq in Hz f s =10000
 //
 // Enter order of B u t t e r w o r t h f i l t e r N = 2
 // −−>Hz
 // Hz =
 //
 // 2
 // 0 . 0 6 7 4 5 5 3 + 0 . 1 3 4 9 1 0 5 z + 0 . 0 6 7 4 5 5 3 z
 // −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
 // 2
 // 0 . 4 1 2 8 0 1 6 − 1 . 1 4 2 9 8 0 5 z + z