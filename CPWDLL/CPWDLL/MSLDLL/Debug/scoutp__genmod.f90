        !COMPILER-GENERATED INTERFACE MODULE: Fri Sep 11 22:59:00 2020
        MODULE SCOUTP__genmod
          INTERFACE 
            SUBROUTINE SCOUTP(N,C,Z,WC,W,BETAM,NPTSQ)
              INTEGER(KIND=4) :: N
              COMPLEX(KIND=8) :: C
              COMPLEX(KIND=8) :: Z(N)
              COMPLEX(KIND=8) :: WC
              COMPLEX(KIND=8) :: W(N)
              REAL(KIND=8) :: BETAM(N)
              INTEGER(KIND=4) :: NPTSQ
            END SUBROUTINE SCOUTP
          END INTERFACE 
        END MODULE SCOUTP__genmod
