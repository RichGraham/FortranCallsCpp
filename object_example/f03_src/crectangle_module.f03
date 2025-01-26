module CRectangle_module
  use, intrinsic :: ISO_C_Binding, only: C_int, C_ptr, C_NULL_ptr
  implicit none
  private
  type CRectangle_type
      private
      type(C_ptr) :: object = C_NULL_ptr
    contains
      private
      !================Public Interface================================
      procedure, public :: init => CRectangle__init
      procedure, public :: area => CRectangle__area
      !================================================================
  end type CRectangle_type

  interface
    function C_CRectangle__init (a, b) result(this) bind(C,name="CRectangle__new")
      import
      type(C_ptr) :: this
      integer(C_int), value :: a, b
    end function C_CRectangle__init
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
  interface init
    module procedure CRectangle__init
  end interface init
  interface delete
    module procedure CRectangle__delete
  end interface delete
  interface area
    module procedure CRectangle__area
  end interface area
  public ::  CRectangle_type
  private :: area, init, delete
contains
! Fortran wrapper routines to interface C wrappers
  subroutine CRectangle__init(this,a,b)
    class(CRectangle_type), intent(out) :: this
    integer :: a,b
    this%object = C_CRectangle__init(int(a,C_int),int(b,C_int))
  end subroutine CRectangle__init

  subroutine CRectangle__delete(this)
    type(CRectangle_type), intent(inout) :: this
    call C_CRectangle__delete(this%object)
    this%object = C_NULL_ptr
  end subroutine CRectangle__delete

  function CRectangle__area(this) result(area)
    class(CRectangle_type), intent(in) :: this
    integer :: area
    area = C_CRectangle__area(this%object)
  end function CRectangle__area

end module CRectangle_module
