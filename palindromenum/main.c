#include <stdio.h>
#include <stdlib.h>
#include<ctype.h>

#define EVEN 0

#define ODD 1


int to_digit(char );
void incr(char [],int);
void nxtgreater(char [],long );
int solve,notdone=1,mid;
int main()
{
    char input[1000001];
    long i,j,size,num,n;
    scanf("%ld",&num);
    for(j=0; j<num; j++)
    {
        for( n=0; n<=1000000; n++)
            input[n]='0';
        notdone=1;
        fflush(stdin);
        gets(input);
        size=strlen(input);
        if(size==1)
        {
            if(input[0]!='9')
                input[0]++;
            else
            {
                input[0]=input[1]='1';
                input[2]='\0';
                size=2;
            }
        }
        else if(size%2!=0)
        {
            solve=ODD;
            mid=size/2;
            notdone=1;
            for(i=1; i<=mid; i++)
            {
                if((to_digit(input[mid-i])<to_digit(input[mid+i]))&&notdone)
                {
                    incr(input,mid);
                    input[mid+i]=input[mid-i];
                    notdone=0;
                }
                else if(to_digit(input[mid-i])>to_digit(input[mid+i])&&notdone)
                {
                    input[mid+i]=input[mid-i];
                    notdone=0;
                }
                else if(to_digit(input[mid-i])==to_digit(input[mid+i])&&notdone)
                {
                    nxtgreater(input,size);
                }
                else if(!notdone)
                {
                    input[mid+i]=input[mid-i];
                }
            }
            input[mid+i]='\0';
        }
        else if(size%2==0)
        {
            solve=EVEN;
            mid=size/2;
            for(i=0; i<=mid; i++)
            {
                if((to_digit(input[mid-i-1])<to_digit(input[mid+i]))&&notdone)
                {
                    incr(input,mid-i-1);
                    input[mid+i]=input[mid-i-1];
                    notdone=0;
                }
                else if(to_digit(input[mid-i-1])>to_digit(input[mid+i])&&notdone)
                {
                    input[mid+i]=input[mid-i-1];
                    notdone=0;
                }
                else if(to_digit(input[mid-i-1])==to_digit(input[mid+i])&&notdone)
                {
                    nxtgreater(input,size);
                }
                else if(!notdone)
                {
                    input[mid+i]=input[mid-i-1];

                }
            }
            input[mid+i]='\0';
        }
        if(input[0]=='0')
        {
            printf("1");
            input[size-1]='1';
        }
        for(i=0; i<size; i++)
            printf("%c",input[i]);+
        printf("\n");
    }
    return 0;
}

void incr(char a[],int pos)
{
    int carry;
    do
    {
        if((char)a[pos]!='9')
        {
            carry=0;
            a[pos]++;
        }
        else
        {
            carry=1;
            a[pos]='0';
        }
        pos--;
    }
    while(carry);


}

int to_digit(char c)
{
    switch(c)
    {
    case '0':
        return 0;
    case '1':
        return 1;
    case '2':
        return 2;
    case '3':
        return 3;
    case '4':
        return 4;
    case '5':
        return 5;
    case '6':
        return 6;
    case '7':
        return 7;
    case '8':
        return 8;
    case '9':
        return 9;
    }
    return 0;
}

/* TODO (Shivanth#1#): Todo -- correct this function
array index going to negative values as passes to incr()
requires a sepeate condition 4 a number with all digits equal
 */

void nxtgreater(char  a [],long size)
{
int k=0;
if(solve==ODD){
	k=1;
	while(a[mid-k]==a[mid+k])
			k++;
	if((mid-k)<0){
		incr(a,mid);
		a[mid+1]=a[mid-1];
		notdone=0;
	}
	else if(a[mid-k]<a[mid+k]){
		incr(a,mid);
		a[mid+1]=a[mid-1];
		notdone=0;
	}
	else if(a[mid-k]>a[mid+k]){
	//a[mid+k]=a[mid-k];
	notdone=0;
	}

}
else if(solve==EVEN){

	k=0;
	while(a[mid-k-1]==a[mid+k])
			k++;
	if((mid-k-1)<0){
		incr(a,mid-1);
		a[mid]=a[mid-1];
		notdone=0;
	}
	else if(a[mid-k-1]<a[mid+k]){
		incr(a,mid-1);
		a[mid]=a[mid-1];
		notdone=0;
	}
	else if(a[mid-k-1]>a[mid+k]){
	a[mid]=a[mid-1];
	notdone=0;
	}
	}


}
