// gcc -c -Og act5.c
// objdump -d act5.o
//   There are three loops, notice what does and does not change between them.

// Sum the elements of array x
int forLoop(int* x, int len)
{
    int i, sum;
    sum = 0;
    for (i = 0; i < len; i++)
    {
        sum += x[i];
    }
    
    return sum;
}

// Sum the elements of array x
int whileLoop(int* x, int len)
{
    int i, sum;
    sum = 0;
    i = 0;
    while (i < len)
    {
        sum += x[i];
        i ++;
    }
    
    return sum;
}

// Sum the elements of array x
int doWhileLoop(int* x, int len)
{
    int i, sum;
    sum = 0;
    i = 0;
    
    do
    {
        sum += x[i];
        i ++;
    } while (i < len);
    
    return sum;
}
