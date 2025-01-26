module CRectangle_module
  use, intrinsic :: ISO_C_Binding, only: C_int, C_ptr, C_NULL_ptr
  implicit none
  private
  type CRectangle_type
    private
    type(C_ptr) :: object = C_NULL_ptr
  end type CRectangle_type
  interface
    function C_CRectangle__new (a, b) result(this) bind(C,name="CRectangle__new")
      import
      type(C_ptr) :: this
      integer(C_int), value :: a, b
    end function C_CRectangle__new
    subroutine C_CRectangle__delete (this) bind(C,name="CRectangle__delete")
      import
      type(C_ptr), value :: this
    end subroutine C_CRectangle__delete
    function C_CRectangle__area (this) result(area) bind(C,name="CRectangle__area")
      import
      integer(C_int) :: area
      type(C_ptr), value :: this
    end function C_CRectangle__area
  end interface
  interface new
    module procedure CRectangle__new
  end interface new
  interface delete
    module procedure CRectangle__delete
  end interface delete
  interface area
    module procedure CRectangle__area
  end interface area
  public :: new, delete, area, CRectangle_type
contains
! Fortran wrapper routines to interface C wrappers
  subroutine CRectangle__new(this,a,b)
    type(CRectangle_type), intent(out) :: this
    integer :: a,b
    this%object = C_CRectangle__new(int(a,C_int),int(b,C_int))
  end subroutine CRectangle__new
  subroutine CRectangle__delete(this)
    type(CRectangle_type), intent(inout) :: this
    call C_CRectangle__delete(this%object)
    this%object = C_NULL_ptr
  end subroutine CRectangle__delete
  function CRectangle__area(this) result(area)
    type(CRectangle_type), intent(in) :: this
    integer :: area
    area = C_CRectangle__area(this%object)
  end function CRectangle__area
end module CRectangle_module
program main
  use CRectangle_module
  type(CRectangle_type) :: rect, second_rect, third_rect
  call new(rect,3,4)
  call new(second_rect,100,5)
  call new(third_rect,9,9)
  write(*,*) 'rect area: ',area(rect), area( second_rect), area(third_rect)
  call delete(rect)
end program main