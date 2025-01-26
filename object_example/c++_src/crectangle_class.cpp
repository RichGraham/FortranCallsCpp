#include <iostream>
using namespace std;
class CRectangle {
    int width, height;
  public:
    CRectangle (int,int);
    int area () {return (width*height);}
};
CRectangle::CRectangle (int a, int b) {
  width = a;
  height = b;
}
/* C wrapper interfaces to C++ routines */
extern "C" {
  CRectangle *CRectangle__new (int a, int b) {
    return new CRectangle(a, b);
  }
  int CRectangle__area (CRectangle *This) {
    return This->area();
  }
  void CRectangle__delete (CRectangle *This) {
    delete This;
  }
}
/* example main() written in C++:
int main () {
  CRectangle rect;
  rect.set_values (3,4);
  cout << "area: " << rect.area();
  return 0;
}
*/