      SUBROUTINE FBLAS_SGEMM(IRA, ICA, IRB, ICB, FA, FB, FC, FAL, FBE)
      DIMENSION FA(IRA,ICA)
      DIMENSION FB(IRB,ICB)
      DIMENSION FC(IRA,ICB)
C  IRA = ROWS A, ICA = COLS A || FAL = ALPHA AND FBE = BETA, NO SUPPORT YET
      IF (ICA - IRB) 400, 10, 400 
C     MATRIX MULTIPLICATION, DIMENSION OF C = ROWS A x COLS B
  10  DO 30, II = 1, IRA
      DO 40, IJ = 1, ICB
      FC(II, IJ) = FBE*FC(II, IJ)
      DO 50, IK = 1, ICA
C     REVERSING I, J, K FOR I, K, J DECREASES THE CACHE MISS RATE
  50  FC(II, IJ) = FC(II, IJ) + FAL*FA(II, IK)*FB(IK, IJ)
  40  CONTINUE
  30  CONTINUE
C     PRINT RESULTS
      PRINT 100
 100  FORMAT(9HMATRIX A:)
      CALL PRINTMATRIX(FA, IRA, ICA)
      PRINT 200
 200  FORMAT(9HMATRIX B:)
      CALL PRINTMATRIX(FB, IRB, ICB)
      PRINT 300
 300  FORMAT(9HMATRIX C:)
      CALL PRINTMATRIX(FC, IRA, ICB)
      GO TO 500
 400  PRINT 401
 401  FORMAT(42HTHE COLUMNS OF A DONT MATCH THE ROWS OF B!)
 500  RETURN
      END
      