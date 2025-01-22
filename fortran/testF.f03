program test
  double precision :: x(3), y

  x = (/1.d0,2.d0,3.d0/)
  call my_cpp_function( x,y)
  print *,y

end

