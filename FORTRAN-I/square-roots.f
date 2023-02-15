      DO 1 I=1,20
      AI = I+0.0
      AA = SQRT(AI)
      PRINT 2, I, AA
   2  FORMAT (15HTHE SQ ROOT OF I2,4H IS F4.2) 
   1  CONTINUE
      END