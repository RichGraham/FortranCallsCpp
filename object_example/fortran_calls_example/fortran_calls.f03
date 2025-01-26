program main
  use CRectangle_module
  type(CRectangle_type) :: rect, second_rect, third_rect
  call new(rect,3,4)
  call new(second_rect,100,5)
  call new(third_rect,9,9)
  write(*,*) 'rect area: ',area(rect), area( second_rect), area(third_rect)
  call delete(rect)
end program main