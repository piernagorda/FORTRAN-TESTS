      DIMENSION IA(3, 3)
      DO 1 I=1, 3
      DO 1 J=1, 3
      IA(I, J)=I+J
   1  CONTINUE
      DO 2 I=1, 3
      PRINT 10, (IA(I,J), J=1,3)
  10  FORMAT (3I2)
   2  CONTINUE  
      END
