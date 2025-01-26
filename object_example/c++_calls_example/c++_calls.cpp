#include <iostream>
using namespace std;

#include  "../c++_src/crectangle_class.h"

int main () {
  CRectangle rect(3,4);
  CRectangle second_rect(300,500);
  CRectangle third_rect(111,2);
  cout << "area: " << rect.area() << ' ' << second_rect.area()<< ' '<< third_rect.area() << '\n';
  return 0;
}
