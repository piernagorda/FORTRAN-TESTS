C     SELECTION SORT ALGORITHM IN FORTRAN I      
      DIMENSION IARRAY(10)
      DATA IARRAY/3, 4, 9, 7, 1, 2, 0, 5, 6, 14/
      PRINT 10, (IARRAY(I), I=1, 10)
  10  FORMAT (28HTHE ARRAY BEFORE SORTING IS 10I3)
      PRINT *,10HSORTING...
      IMINPOS = 1
      IMIN = IARRAY(1)
      IPOSREP = 1
  40  DO 20, I= 1, 10   
      DO 30, IX=I, 10 
      IF (IARRAY(IX)-IMIN) 50, 30, 30
  50  IMIN = IARRAY(IX)
      IMINPOS = IX
  30  CONTINUE
      ITEMP = IARRAY(IPOSREP)
      IARRAY(IPOSREP) = IARRAY(IMINPOS)
      IARRAY(IMINPOS) = ITEMP
      IPOSREP = IPOSREP + 1
      IMINPOS = IPOSREP
      IMIN = IARRAY(IPOSREP)
  20  CONTINUE
      PRINT 70, (IARRAY(I), I=1, 10)
  70  FORMAT (27HTHE ARRAY AFTER SORTING IS 10I3)
      END