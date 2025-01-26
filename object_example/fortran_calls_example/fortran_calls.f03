program main
  use CRectangle_module
  type(CRectangle_type) :: rect, second_rect, third_rect

  call rect%init(3,4)
  call second_rect%init(100,5)
  call third_rect%init(9,9)

  write(*,*) 'rect area: ',rect%area(), second_rect%area(), third_rect%area()
end program main