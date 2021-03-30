# CS322: Computer Architecture and Organization

# Year 2020-2021

`Create the following code in assembly:`

## [CodeSample1](https://github.com/RanaHabib/Assembly-projects/blob/main/CodeSample1.asm)

 Write, run and test a MIPS program to implement the following C code segment.

```c++
if (g >= h)
    g++;
else
    g--;
```



## [CodeSample2.asm](https://github.com/RanaHabib/Assembly-projects/blob/main/CodeSample2.asm)

Develop an algorithm, test it and then implement it in MIPS assembly that takes an array of characters, then reverses it in memory and prints the reversed version.

## [CodeSample3.asm](https://github.com/RanaHabib/Assembly-projects/blob/main/CodeSample3.asm)

Write a MIPS program to execute the following nested C loop.

```c++
for(i = 0; i < a; i++)
    for(j = i; j >= 0; j--)
        C[i] *= j;
```



## [CodeSample4.asm](https://github.com/RanaHabib/Assembly-projects/blob/main/CodeSample4.asm)

Translate the following C program to MIPS assembly.

```c++
int main() {
    t1 = fact(8);
    t2 = fact(3);
    t3 = t1 + t2;
}

int fact(int n) {
    int i, result = 1;
    for (i = n; i > 1; i--)
        result = result * i;
    return result;
}
```



## [SampleCode5.asm](https://github.com/RanaHabib/Assembly-projects/blob/main/SampleCode5.asm)

Design an algorithm for testing whether a given string is a palindrome. (Recall that a palindrome is a word that is the same forward and backward. For example, the words “wow” and “racecar” are palindromes.) Implement your algorithm using MIPS assembly code.