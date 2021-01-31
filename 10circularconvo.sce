 //PROGRAM TO COMPUTE CIRCULAR CONVOLUTIONOF TWO SEQUENCES USING BASIC EQUATION 
clc;
clear ;
close ;
x = input ( " Enter t h e i n p u t s e q u e n c e= " ) 
// x=[1 1 2 2 ] 
m = length ( x ) ; 
xl = input ( "Enter the lower index of input sequence= " )// 0
xh = xl +m -1;
n = xl:1:xh ;
subplot (3 ,1 ,1) ;
a = gca() ;
a .x_location = "origin";
a .y_location = "origin";
a .foreground = 5;
a .font_color = 5;
a .font_style = 5;
plot2d3 ( "gnn" ,n , x) ;
title ( " I n p u t S e q u e n c e x [ n ] " ) ;
xlabel ( " Sample s n " ) ;
ylabel ( " Ampli tude " ) ;

h = input ( " E n t e r t h e im p ul s e r e s p o n s e s e q u e n c e= " ) ; //h=[1 2 3 4 ]
l = length ( h ) ;
hl = input ("Enter the lower index of impulse response= " ) ; // 0
hh = hl +l -1;
g = hl :1: hh ;
subplot (3 ,1 ,2) ;
a = gca() ;
a .x_location ="origin";
a .y_location ="origin";
a .foreground = 5;
a .font_color = 5;
a .font_style = 5;
plot2d3 ( "gnn" ,g , h) ;
title ( " Im p ul s e R e s po n s e S e q u e n c e h [ n ] " ) ;
xlabel ( " Sample s n " ) ;
ylabel ( " Ampli tude " ) ;


 // f o r making l e n g t h of bo th s i g n a l s e q u a l
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
disp ( " Circular convolution by e q u a t i o n is y [ n ] : " ) ;
disp ( y );
nx = xl + hl ;
r = nx : length ( y ) -1;
subplot (3 ,1 ,3) ;
a = gca () ;
a .x_location ="origin";
a .y_location ="origin";
a .foreground = 5;
a .font_color = 5;
a .font_style = 5;
plot2d3 ( "gnn" ,r , y) ;
 title ( " Output R e s po n se S e q u e n ce of C i r c u l ar C o n v ol u ti o n y [ n ] u s i n g B a s i c E q ua tio n " ) ;
 xlabel ( " Sample s n " ) ;
 ylabel ( " Ampli tude " ) ;

 //INPUT :
 // E n t e r t h e i n p u t s e q u e n c e =[1 1 2 2 ]
 // E n t e r t h e l o w e r i n d e x of i n p u t s e q u e n c e=0
 // E n t e r t h e im p ul s e r e s p o n s e s e q u e n c e =[1 2 3 4 ]
 // E n t e r t h e l o w e r i n d e x of im p ul s e r e s p o n s e s e q u e n c e
//=0


 //OUTPUT:
 // C i r c u l a r c o n v o l u t i o n by e q u a t i o n i s y [ n ] :

 // 1 5 .
 // 1 7 .
 // 1 5 .
 // 1 3 .
