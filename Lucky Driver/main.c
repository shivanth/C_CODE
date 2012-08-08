#include <stdio.h>
#include <stdlib.h>

int T_num,size;
short int *s ;
short int chartoi(char);
void check();
void read_inputs();
int inc();

short int num[4];
//int num_count[10];
//int set_count[10];
void check_9(int);
int first,second,third,fourth;
//int count =0;
int main()
{
    read_inputs();
    return 0;
}


void read_inputs()
{
    int i,j,k,temp;
    char c;
    c=getchar();

//scanf("%d",&T_num);
    T_num=chartoi(c);
    c=getchar();
    s=malloc(10000*sizeof(short int));

    for(i =0; i<T_num; i++)
    {
        j=0;

        c=getchar();
        do
        {
            s[j]=chartoi(c);
            c=getchar();
            j++;
        }
        while(c!='\n');
        size=j;
        first=second=third=fourth=-1;
        check();
    }

}

void check()
{

    int count=0,i,k,temp;
    num[0]=num[1]=num[2]=num[3]=-1;;
    first=second=third=fourth=-1;

    //count_big(s);
    int flag;
    do
    {
        //clear_num_count();
        //count_small(num);
        //temp=generate_able();
        if((((num[0]<0?0:num[0])+(num[1]<0?0:num[1])+(num[2]<0?0:num[2])+(num[3]<0?0:num[3]))%9==0)&&(num[1]+num[2]+num[3]+num[0])>0)
        {
            //if(recheck())
            count++;
        }



    }
    while( inc());
    printf("%d\n",count);
}


/*void check_9( int a)
{
	         if(a%9==0)
            {
                count++;
            }

    /*
    int b=a,c;
    int sum=0;
    if(b==9)
        return 1;
    else if(b%10==b)
        return 0;
    while((c=b%10)!=0)
    {
        sum+=c;
        b=b/10;
    }
    return check_9(sum);

}
*/
short int chartoi(char c)
{
    switch(c)
    {
    case '0':
        return 0;
        break;
    case '1':
        return 1;
        break;
    case '2':
        return 2;
        break;
    case '3':
        return 3;
        break;
    case '4':
        return 4;
        break;
    case '5':
        return 5;
        break;
    case '6':
        return 6;
        break;
    case '7':
        return 7;
        break;
    case '8':
        return 8;
        break;
    case '9':
        return 9;
        break;


    }

}


/*
void count_small (int * num)
{
    int i,j,k;

    while(num!=0)
    {
        j=num%10;
        num_count[j]++;
        num =num/10;
    }
}
*/
/*
void count_big (int * num)
{
    int i,j,k;

    for(j=0; j<size; j++)
    {
        set_count[num[j]]++;
    }
}
*/
/*
int inc ()
{
    int i,j;
    num[3]+=9;
    for(i=3; i>=0; i--)
    {
        if(num[i]>10&&i!=0)
        {
            num[i]=num[i]-10;
            if(num[i-1]!=-1)
                num[i-1]++;
            else
            {
                for(j=i-1; j<=3; j++)
                {
                    num[j]=0;
                }
            }

        }
        else if (num[i]>10&&i==0)

        {
            //num[i]=0;
            return 0;
        }
        //else if(num[i]!=10)
        //  break;
    }
    return 1;
}
*/
/*
void clear_num_count()
{
    int i;
    for(i=0; i<10; i++)
        num_count[i]=0;

}
*/


int inc()
{
    do
    {
        first++;
        if(first>=size)
        {

            second++;
            first=second+1;
        }
        if(second==size-1)
        {
            third++;
            second=third+1;
            first=second+1;
        }
        if(third==size-2)
        {
            fourth++;
            third=fourth+1;
            second=third+1;
            first=second+1;
        }
        if(fourth==size-3)
        {
            break;
        }
        if(first>-2)
            num[3]=s[first];
        if(second>-1)
            num[2]=s[second];
        if(third>-1)
            num[1]=s[third];
        if(fourth>-1)
            num[0]=s[fourth];

    }
    while((((num[0]<0?0:num[0])+(num[1]<0?0:num[1])+(num[2]<0?0:num[2])+(num[3]<0?0:num[3]))%9!=0)||num[0]+num[1]+num[2]+num[3]<=0);
    if(fourth==size-3)
    {
        return 0;
    }
    else
    {
        return 1;
    }
}
/*
int generate_able()
{
    int count=0;
    int i=0,j=0,flag=0;
    while(i<size)
    {
        if(num[j]==-1)
        {
            j++;
            continue;
        }
        else if(num[j]==s[i])
        {
            j++;
        }
        i++;
        if(j==4)
        {
            j=0;
            count++;
        }
    }
    if(recheck())
    {
        return count;
    }
    return 0;
}
*/
int recheck()
{
    int i;
    int sum=0;
    for(i=0; i<4; i++)
    {
        if(num[i]!=-1)
        {
            sum=sum*10+num[i];

        }
    }
    if(sum%9==0&&sum!=0)
        return 1;
    else return 0;
}


