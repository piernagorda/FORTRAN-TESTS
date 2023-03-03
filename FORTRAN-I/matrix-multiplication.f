      DIMENSION IA(3,3)
      DIMENSION IB(3,3)
      DIMENSION IC(3, 3)
      IROWSA = 3
      ICOLSA = 3
      IROWSB = 3
      ICOLSB = 3
C     MATRIX FIL      
      DO 10, IFIL = 1, 3
      DO 20, IJFIL = 1, 3  
      IA(IFIL, IJFIL) = IFIL + IJFIL
      IB(IFIL, IJFIL) = IFIL + IJFIL
      IC(IFIL, IJFIL) = 0
  20  CONTINUE
  10  CONTINUE
C     MATRIX MULTIPLICATION, DIMENSION OF C = ROWS A x COLS B
      DO 30, II = 1, IROWSA
      DO 40, IJ = 1, ICOLSB
      IRES = 0
      INDEX = 1

      DO 50, INDEX = 1, IROWSA
      IRES = IRES + IA(II, INDEX)*IB(IJ, INDEX)
  50  CONTINUE  

      IC(II, IJ) = IRES
      IRES = 0
  40  CONTINUE
  30  CONTINUE    
C     PRINT RESULTS
      PRINT 100
 100  FORMAT(9HMATRIX A:)
      DO 101 I=1, 3
      PRINT 102, (IA(I,J), J=1,3)
 102  FORMAT (3I2)
 101  CONTINUE
      PRINT 200
 200  FORMAT(9HMATRIX B:)
      DO 201 I=1, 3
      PRINT 202, (IB(I,J), J=1,3)
 202  FORMAT (3I2)
 201  CONTINUE
      PRINT 300
 300  FORMAT(9HMATRIX C:)
      DO 301 I=1, 3
      PRINT 302, (IC(I,J), J=1,3)
 302  FORMAT (3I3)
 301  CONTINUE
      END
      