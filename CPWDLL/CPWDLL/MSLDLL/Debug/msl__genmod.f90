        !COMPILER-GENERATED INTERFACE MODULE: Fri Sep 11 22:59:00 2020
        MODULE MSL__genmod
          INTERFACE 
            SUBROUTINE MSL(N,T,H,E,AW,S,DC,DL,UM,EM)
              INTEGER(KIND=4) ,VALUE :: N
              REAL(KIND=8) ,VALUE :: T
              REAL(KIND=8) ,VALUE :: H
              REAL(KIND=8) ,VALUE :: E
              REAL(KIND=8) :: AW(10)
              REAL(KIND=8) :: S(9)
              REAL(KIND=8) :: DC(100)
              REAL(KIND=8) :: DL(100)
              REAL(KIND=8) :: UM(100)
              REAL(KIND=8) :: EM(10)
            END SUBROUTINE MSL
          END INTERFACE 
        END MODULE MSL__genmod
