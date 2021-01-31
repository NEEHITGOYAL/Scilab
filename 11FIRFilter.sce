// To D e sig n an Low Pa s s FIR F i l t e r
// F i l t e r Leng th =5, O rde r = 4
//Window = R e c t a n g ul a r Window
//Ana
clc ;
clear ;
xdel ( winsid () ) ;
fc = input (" Enter Analog cut off freq in Hz=")
fs = input (" Enter Analog sampling Freq . in Hz=")
 M = input (" Enter o r d e r of f i l t e r =")
 w = (2* %pi ) *( fc / fs );
disp (w , "Dig i t a l cut off freq u e n c y i n r a d i a n s . c y c l e s /s am pl e s " ) ;
 wc = w/ %pi ;
 disp ( wc , " Normalized digital cut off frequency in cycles/ samples " ) ;
[wft,wfm,fr]=wfir("lp",M+1,[wc/2,0],"re",[0,0]) ;
 disp ( wft , "Impulse Response of LPF FIR Filter: h [ n]=" );
 // P l o t t i n g t h e Magni tude R e s po n s e of LPF FIR F i l t e r
 subplot (2 ,1 ,1)

 plot (2* fr , wfm )
 xlabel ( " No rmali z e d D i g i t a l Freq u e n c y w−−−> " )
 ylabel ( " Magni tude |H(w)|= " )
 title ( " Magni tude R e s po n s e of FIR LPF " )
 xgrid (1)
 subplot (2 ,1 ,2)
 plot ( fr * fs , wfm )
 xlabel ( " Analog Freq u e n c y i n Hz f −−−> " )
 ylabel ( " Magni tude |H(w)|= " )
 title ( " Magni tude R e s po n s e of FIR LPF " )
 xgrid (1)
 //Example
 // Enter Analog cut off freq . i n Hz= 250
 //
 // Enter Analog s am pli n g Freq . i n Hz= 2000
 //
 // Enter o r d e r of f i l t e r = 4
 //
 // D i g i t a l cut off freq u e n c y i n r a d i a n s . c y c l e s /
//s am pl e s
 //
 // 0 . 7 8 5 3 9 8 2
 //
 // No rmali z e d d i g i t a l cut off freq u e n c y i n c y c l e s /
//s am pl e s
 //
 // 0 . 2 5
 //
 // Im p ul s e R e s po n s e of LPF FIR F i l t e r : h [ n]=
 //
 // 0 . 1 5 9 1 5 4 9 0 . 2 2 5 0 7 9 1 0 . 2 5 0 . 2 2 5 0 7 9 1
//0 . 1 5 9 1 5 4 9
