        !COMPILER-GENERATED INTERFACE MODULE: Fri Sep 11 22:58:59 2020
        MODULE INTRP__genmod
          INTERFACE 
            SUBROUTINE INTRP(X,Y,XOUT,YOUT,YPOUT,NEQN,KOLD,PHI,PSI)
              INTEGER(KIND=4) :: NEQN
              REAL(KIND=8) :: X
              REAL(KIND=8) :: Y(NEQN)
              REAL(KIND=8) :: XOUT
              REAL(KIND=8) :: YOUT(NEQN)
              REAL(KIND=8) :: YPOUT(NEQN)
              INTEGER(KIND=4) :: KOLD
              REAL(KIND=8) :: PHI(NEQN,16)
              REAL(KIND=8) :: PSI(12)
            END SUBROUTINE INTRP
          END INTERFACE 
        END MODULE INTRP__genmod
