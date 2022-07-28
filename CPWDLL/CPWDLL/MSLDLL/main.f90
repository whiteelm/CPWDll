      subroutine main(t, h, e, aw, s, dC, dL, em, dZ0)

      implicit complex*16(c,w,z), real*8(a-b,d-h,o-v,x-y)
      dimension z(344),w(344),betam(20),qwork(344)  ! z(20),w(20),betam(20),qwork(344) - ����
      dimension z1(10), z2(10), x2(10), x3(10),  x4(10), aC(100), bC(100), s(2)
      n = 1
      pi = 3.141593d0
      zero =(0.d0,0.d0) ! ����
      zi = (0.d0,1.d0)  ! ������ �������	  
      nn = 10           ! ���������� �����
      sww=s(1)+aw+s(2) ! ����� ���� ����� ������� � ������� ����� ���
      !������ ������� ���������
      z1(1) = zi*t
      z1(2) = 0
      z1(3) = s(1)
      z1(4) = s(1)+zi*t
      z1(5) = s(1)+zi*t+aw
      z1(6) = s(1)+aw
      z1(7) = s(1)+aw+s(2)
      z1(8) = s(1)+aw+s(2)+zi*t
      z1(9) = (1.d20,1.d20)  ! �������� ������������� (������������� �����)
      z1(10)= -10000
      !������ ����� � ����� ��
      betam(1) =  0.5
      betam(2) = -0.5
      betam(3) = -0.5
      betam(4) =  0.5
      betam(5) =  0.5
      betam(6) = -0.5
      betam(7) = -0.5
      betam(8) =  0.5
      betam(9) = -2.0
      betam(10) = 0.0
      !�����. ����.������ z10 � ���. ���������. z1
      z10 = dcmplx(sww/2, sww/8+(h+t))
      ! Compute nodes and weights for parameter problem:
      nptsq =12									   
      call qinit(nn,betam,nptsq,qwork)
      ! Solve parameter problem:
      ! (initial guess must be given to avoid accidental exact solution)
      iprint = 0
      ! iprint  -2,-1,0, or 1 for increasing amounts of output (input)
      iguess = 1
      do 1 k = 1,nn
      z(k) = exp(dcmplx(0.d0, k-4.d0))   
1     continue
      tol = 1.d-8	
      call scsolv(iprint,iguess,tol,errest,nn,c,z,z10,z1,betam,nptsq,qwork)
      !	z1(k) - ������� ���.�������������� (� ��������� ���� ���������� ��� w(k) )
!	z(k)  - �������� ������������ ������� 
!	z2(k) - ������� �������������

! ������-�������� ����������� ����� z(k) �� ����.������������� (���������� -> �������.��� �2)
      z20 = zi;		! ������� �������.������ z20 �� ������� ������������� z2		      
      z201=-zi;		! ��������� ���������.����� (�.�. ������������ ������)
      do 2 k = 1, nn-1
      z2(k)=(z(k)*z201-z20)/(z(k)-1)  ! ������������ ������� z2
      x2(k)=dreal(z2(k));			  
2     continue	    	
! ���������� � ������� (-1...+1) �� ��� �3	  
      do 3 k = 2,nn-3
      x3(k) = 2 * (x2(k)-x2(2)) / (x2(nn-3)-x2(2)) - 1.   
3     continue
! ��������� ������� ����� ���������� �� ��� �4
      x4(1)=x3(2);
      x4(2)=x3(3);
      x4(3)=x3(6);
      x4(4)=x3(7);
	M=1000
	call GHIONE(x4,aC,n,M)
	call refor(aC,bC,n)! �������� "������" ����� � ��������, ����������. "������" ���������� 

! ������ �������� � ����� �������� � ��������������� �������� (substrate) 
     a=aw/2;
     b=s(1)
     xs1=cosh(pi*a/h) 
     xs2=cosh(pi*(a+b)/h) ! ����������� ������ �� ����. �/��������
     ak=sqrt((xs1-1)/(xs2-1))
     dC1=aKK1(ak)
! ������ �������� � ������ �������� � ��������������� �������� (substrate)
     a=aw/2;
     b=s(2)
     xs1=cosh(pi*a/h) 
     xs2=cosh(pi*(a+b)/h) ! ����������� ������ �� ����. �/��������
     ak=sqrt((xs1-1)/(xs2-1))
     dC2=aKK1(ak)
! ������ �������� � ��������������� �������� (substrate) 
     dC12=dC1+dC2
!//////////////////////////////////////////////////////////
     bbC=bC(1)
     dC = 8.854 * (2*bbC + (e-1.) * dC12) !�������
     dL=0.4*pi/(bbC*2)  !�������������
     dZ0=sqrt(1.d6*dL/dC) !��������
     em = (dC/8.854)/(bbC*2) !��������� ��������������� �������������
     end

