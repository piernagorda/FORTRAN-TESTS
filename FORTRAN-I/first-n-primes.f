C  IPRIMES = LIST TO STORE THE FIRST N PRIMES
C  IA = COUNTER OF PRIMES IN THE LIST
C  IB = CURRENT NUMBER WE ARE CHECKING
C  IMODCOUNT = COUNTS HOW MANY TIMES IB%I=0
C  FORTRAN I LACKS THE MOD OPERATOR. IT CAN BE CALCULATED AS C = A - (A / B) * B
      DIMENSION IPRIMES(100)
      INU = 0
      PRINT 10
  10  FORMAT (8HENTER N:) 
      READ 20, INU
  20  FORMAT (I3)
      IA = 1
      IB = 2
      IMODCOUNT = 0
  30  IF (INU-IA) 81, 40, 40   
C   ----------------------------------------------------------------------------------------
  40  DO 50, I=1, IB
      IC = IB - (IB / I) * I
      IF (IC) 50, 60, 50
  60  IMODCOUNT = IMODCOUNT + 1
  50  CONTINUE    
      IF (2 - IMODCOUNT) 70, 80, 70
  80  IPRIMES(IA) = IB   
      IA = IA + 1
  70  IB = IB + 1
      IMODCOUNT = 0
      GO TO 30
C   ----------------------------------------------------------------------------------------
  81  PRINT 90, (IPRIMES(J), J=1, INU)
  90  FORMAT (I3)
      END