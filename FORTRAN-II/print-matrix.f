      SUBROUTINE PRINTMATRIX(FA, IROWS, ICOLS)
      DIMENSION FA(IROWS,ICOLS)
      DO 101 I=1, IROWS
      PRINT 102, (FA(I,J), J=1,ICOLS)
 102  FORMAT (1000F15.4)
 101  CONTINUE
      RETURN
      END