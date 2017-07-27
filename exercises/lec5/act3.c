//
// This quick activity looks at compilation and assembly.
//   type gcc -Og -S act3.c
// Then view act3.s in your favorite editor
//   Notice the assembly is there, plus some other lines.
// Now compile with gcc -Og -c act3.c
// Then type objdump -d act3.o 
//

long mx(long x)
{
    return x*12;
}

long addm(long x)
{
    return mx(x) + 1;
}
