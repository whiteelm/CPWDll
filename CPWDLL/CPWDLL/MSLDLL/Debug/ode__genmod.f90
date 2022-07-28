        !COMPILER-GENERATED INTERFACE MODULE: Fri Sep 11 22:58:59 2020
        MODULE ODE__genmod
          INTERFACE 
            SUBROUTINE ODE(F,NEQN,Y,T,TOUT,RELERR,ABSERR,IFLAG,WORK,    &
     &IWORK)
              INTEGER(KIND=4) :: NEQN
              EXTERNAL F
              REAL(KIND=8) :: Y(NEQN)
              REAL(KIND=8) :: T
              REAL(KIND=8) :: TOUT
              REAL(KIND=8) :: RELERR
              REAL(KIND=8) :: ABSERR
              INTEGER(KIND=4) :: IFLAG
              REAL(KIND=8) :: WORK(1)
              INTEGER(KIND=4) :: IWORK(25)
            END SUBROUTINE ODE
          END INTERFACE 
        END MODULE ODE__genmod
