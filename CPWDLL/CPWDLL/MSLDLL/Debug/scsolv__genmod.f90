        !COMPILER-GENERATED INTERFACE MODULE: Fri Sep 11 22:59:00 2020
        MODULE SCSOLV__genmod
          INTERFACE 
            SUBROUTINE SCSOLV(IPRINT,IGUESS,TOL,ERREST,N,C,Z,WC,W,BETAM,&
     &NPTSQ,QWORK)
              INTEGER(KIND=4) :: N
              INTEGER(KIND=4) :: IPRINT
              INTEGER(KIND=4) :: IGUESS
              REAL(KIND=8) :: TOL
              REAL(KIND=8) :: ERREST
              COMPLEX(KIND=8) :: C
              COMPLEX(KIND=8) :: Z(N)
              COMPLEX(KIND=8) :: WC
              COMPLEX(KIND=8) :: W(N)
              REAL(KIND=8) :: BETAM(N)
              INTEGER(KIND=4) :: NPTSQ
              REAL(KIND=8) :: QWORK(1)
            END SUBROUTINE SCSOLV
          END INTERFACE 
        END MODULE SCSOLV__genmod
