    subroutine CPW(t, h, e, aw, s, dC, dL, em, dZ0)
    !dec$ attributes dllexport ::CPW
    !DEC$ ATTRIBUTES VALUE :: t, h, e, aw
    !DEC$ ATTRIBUTES REFERENCE :: s, dC, dL, em, dZ0
    implicit real*8(a-y)
    dimension s(2)
    call main(t, h, e, aw, s, dC, dL, em, dZ0)
    end