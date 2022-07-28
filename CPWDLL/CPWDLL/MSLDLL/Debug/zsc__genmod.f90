        !COMPILER-GENERATED INTERFACE MODULE: Fri Sep 11 22:59:00 2020
        MODULE ZSC__genmod
          INTERFACE 
            FUNCTION ZSC(WW,IGUESS,ZINIT,Z0,W0,K0,EPS,IER,N,C,Z,WC,W,   &
     &BETAM,NPTSQ,QWORK)
              INTEGER(KIND=4) :: N
              COMPLEX(KIND=8) :: WW
              INTEGER(KIND=4) :: IGUESS
              COMPLEX(KIND=8) :: ZINIT
              COMPLEX(KIND=8) :: Z0
              COMPLEX(KIND=8) :: W0
              INTEGER(KIND=4) :: K0
              REAL(KIND=8) :: EPS
              INTEGER(KIND=4) :: IER
              COMPLEX(KIND=8) :: C
              COMPLEX(KIND=8) :: Z(N)
              COMPLEX(KIND=8) :: WC
              COMPLEX(KIND=8) :: W(N)
              REAL(KIND=8) :: BETAM(N)
              INTEGER(KIND=4) :: NPTSQ
              REAL(KIND=8) :: QWORK(1)
              COMPLEX(KIND=8) :: ZSC
            END FUNCTION ZSC
          END INTERFACE 
        END MODULE ZSC__genmod
