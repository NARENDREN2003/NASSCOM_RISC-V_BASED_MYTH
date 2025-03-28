//PROGRAM TO FIND SUM OF n NUMBERS FROM 1 to N//
//HERE I HAVE CHOSEN AS 10//
#include<stdio.h>
int main()
{
   int i,sum=0,n=10;
   for(i=1;i<= n;++i)
   {
     sum +=i;
   }
   printf("Sum of numbers from 1 to %d is %d",n,sum)
   return 0;
}
