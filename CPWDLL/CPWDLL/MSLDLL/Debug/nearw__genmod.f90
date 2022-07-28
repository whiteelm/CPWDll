        !COMPILER-GENERATED INTERFACE MODULE: Fri Sep 11 22:59:00 2020
        MODULE NEARW__genmod
          INTERFACE 
            SUBROUTINE NEARW(WW,ZN,WN,KN,N,Z,WC,W,BETAM)
              INTEGER(KIND=4) :: N
              COMPLEX(KIND=8) :: WW
              COMPLEX(KIND=8) :: ZN
              COMPLEX(KIND=8) :: WN
              INTEGER(KIND=4) :: KN
              COMPLEX(KIND=8) :: Z(N)
              COMPLEX(KIND=8) :: WC
              COMPLEX(KIND=8) :: W(N)
              REAL(KIND=8) :: BETAM(N)
            END SUBROUTINE NEARW
          END INTERFACE 
        END MODULE NEARW__genmod
