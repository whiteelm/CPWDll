        !COMPILER-GENERATED INTERFACE MODULE: Fri Sep 11 22:59:00 2020
        MODULE ZQUAD__genmod
          INTERFACE 
            FUNCTION ZQUAD(ZA,KA,ZB,KB,N,Z,BETAM,NPTSQ,QWORK)
              INTEGER(KIND=4) :: N
              COMPLEX(KIND=8) :: ZA
              INTEGER(KIND=4) :: KA
              COMPLEX(KIND=8) :: ZB
              INTEGER(KIND=4) :: KB
              COMPLEX(KIND=8) :: Z(N)
              REAL(KIND=8) :: BETAM(N)
              INTEGER(KIND=4) :: NPTSQ
              REAL(KIND=8) :: QWORK(1)
              COMPLEX(KIND=8) :: ZQUAD
            END FUNCTION ZQUAD
          END INTERFACE 
        END MODULE ZQUAD__genmod
