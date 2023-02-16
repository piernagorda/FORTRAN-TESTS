# Introduction

Fortran is generally regarded as the first high-level programming language in history. John Backus, the director of the FORTRAN project, started working on it in 1954 and the first manual for it was made public in 1956, targetting the IBM 704. 

Since the very first manual until the 1990 revision, the language was called FORTRAN (its original name), so I thought it would be a nice gesture to call the language by its original name in this repository. In fact, all the code will be written in what we could call "classic Fortran". Before getting started, it's important to know what this repository will cover: 

* FORTRAN I
* FORTRAN II
* FORTRAN IV 
* FORTRAN 66
* FORTRAN 77 

FORTRAN III is not in that list since the manual was never publicly available. It included some new features (like inline assembly code) that were included in FORTRAN IV. Therefore, when writing FORTRAN IV code, I will try to use the features included in FORTRAN III. 

In the future, I will create another repository targetting modern Fortran (from Fortran 90 all the way up until Fortran 2018, the latest version). I would also love to dedicate some time to code High Performance Fortran since it can be one of the fastest languages availables. However, as I said, it will be a future project. For now, I will be focusing on the legacy versions. 

Everything has been coded in Visual Studio Code with the "fortran" extension by Xavier Hahn and compiled with gfortran. 


## FORTRAN I

The first release of FORTRAN had a good bunch of instructions targetting physical elements of the computer that are not present nowadays, such as READ TAPE, READ DRUM, SENSE LIGHT, etc. Most of these instructions can be found in the FORTRAN I Manual. Some other original instructions such as the arithmetic IF (removed from the language in the 2018 revision) or the Hollerith constants (replaced by CHARACTER in FORTRAN 77 and removed from the language in Fortran 95) are still supported by modern compilers that support classic FORTRAN (gfortran is one of them), but warnings will indicate which features have been removed from modern versions. 

Since FORTRAN I (and later revisions) was meant to be coded in punchcards, which usually had 80 columns, so there are certain limitations that must be followed if we want the code to compile. For example, the first column in used to indicate a comment (typing a 'C' in column 1 will comment the whole line), columns 2-6 are used to to type the statement numbers and columns 7-72 are used to write the desired statements. Columns 73-80 will be ignored by the compiler. I haven't tried to type something past column 80, but it would be an interesting thing to try (maybe the code compiles in certain compilers but ignores the code? Maybe in some other compilers it errors out?)

One of the features that was removed (and which I find useful) from the language in Fortran 95 were the Hollerith constants. By typing in the XHY format (where X = lenght of the string, and Y is the string itself), we'd be able to write modern string. For example, to write "Hello World!" we would type "12HHello World!" and the compiler will interprete the 12 characters after the first H as a string; anything past those 12 characters would be needed to be specified too. 

Floating Point arithmetic was a new thing with the IBM 704 and FORTRAN I made good use of it, supporting Floating Point and Integer variables. To write an Integer variable, it must start with the letters I, J, K, L, M or N. Any other value starting character will make the variable be considered as an FP variable. For example, IAGE = 3 will create an integer variable. However, if we change it to FAGE, it will be considered a FP variable. 

Regarding the read/write formats, we still have to follow the Fw.d and Iw rules: w specifies the width of the number and d, the numbers that conform the decimal part. If we expect to print FP numbers in the range 0 - 999 with 2 decimals, we could specify F6.2: two decimals + the dot + the 3 numbers in the range 000-999 = width of 6. To see this with a practical example, if we wanted to print the number 1458.345, we would need to format it as F8.3 (7 numbers + the dot = width 8, plus 3 decimals).

There are many other syntax rules that are very well described in the original manual, which can be found in the Resources section.

## FORTRAN II

Not yet created

## FORTRAN IV

Not yet created

##Resources

The following resources have been used to create the code in this repository: 

* FORTRAN Articles: http://p.web.umkc.edu/pgd5ab/www/fortran_overview.htm , http://www.quadibloc.com/comp/fort01.htm , https://en.wikipedia.org/wiki/Fortran
* FORTRAN I Manual: http://bitsavers.informatik.uni-stuttgart.de/pdf/ibm/704/704_FortranProgRefMan_Oct56.pdf
* FORTRAN II Manual: https://archive.computerhistory.org/resources/text/Fortran/102653989.05.01.acc.pdf

