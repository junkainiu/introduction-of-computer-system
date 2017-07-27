
act5.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <forLoop>:
   0:	b8 00 00 00 00       	mov    $0x0,%eax
   5:	ba 00 00 00 00       	mov    $0x0,%edx
   a:	eb 09                	jmp    15 <forLoop+0x15>
   c:	48 63 ca             	movslq %edx,%rcx
   f:	03 04 8f             	add    (%rdi,%rcx,4),%eax
  12:	83 c2 01             	add    $0x1,%edx
  15:	39 f2                	cmp    %esi,%edx
  17:	7c f3                	jl     c <forLoop+0xc>
  19:	f3 c3                	repz retq 

000000000000001b <whileLoop>:
  1b:	b8 00 00 00 00       	mov    $0x0,%eax
  20:	ba 00 00 00 00       	mov    $0x0,%edx
  25:	eb 09                	jmp    30 <whileLoop+0x15>
  27:	48 63 ca             	movslq %edx,%rcx
  2a:	03 04 8f             	add    (%rdi,%rcx,4),%eax
  2d:	83 c2 01             	add    $0x1,%edx
  30:	39 f2                	cmp    %esi,%edx
  32:	7c f3                	jl     27 <whileLoop+0xc>
  34:	f3 c3                	repz retq 

0000000000000036 <doWhileLoop>:
  36:	b8 00 00 00 00       	mov    $0x0,%eax
  3b:	ba 00 00 00 00       	mov    $0x0,%edx
  40:	48 63 ca             	movslq %edx,%rcx
  43:	03 04 8f             	add    (%rdi,%rcx,4),%eax
  46:	83 c2 01             	add    $0x1,%edx
  49:	39 f2                	cmp    %esi,%edx
  4b:	7c f3                	jl     40 <doWhileLoop+0xa>
  4d:	f3 c3                	repz retq 
