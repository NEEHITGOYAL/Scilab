// Caption : To Design Digital IIR Butter worth LPF
// Analog cutoff freq = 1000 Hz , Sampling Freq =
//10000 s am pl e s / s e c
// Order of IIR f i l t e r N = 2

clc ;
clear ;
xdel ( winsid () ) ;
fc = input ( " Enter cut off freq in Hz f c = " )
fs = input ( " Enter sampling freq in Hz f s = " )
N = input ( " Enter order of Butterworth filter N = " )
Fp = 2* fc / fs ; 
// Passband edge frequency bicycles /samples
[ Hz ]= iir(N , "lp" , "butt" ,[ Fp /2 ,0] ,[0 ,0]) 
// digital IIR Butter worth Filter
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
 // Enter cut off freq in Hz f c =1000
 //
 // Enter sampling freq in Hz f s =10000
 //
 // Enter order of Butterworth filter N = 2
 // −−>Hz
 // Hz =
 //
 // 2
 // 0 . 0 6 7 4 5 5 3 + 0 . 1 3 4 9 1 0 5 z + 0 . 0 6 7 4 5 5 3 z
 // −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
 // 2
 // 0 . 4 1 2 8 0 1 6 − 1 . 1 4 2 9 8 0 5 z + z
