#include <iostream>

/*
      Short program to determine whether a provided positive number is composite.
*/

int main() {
      // do not chage this section
      // the following two variable names must stay the same:
      int num = 94;
      int is_composite;

      for(int i=0; i<9; i++){
        std::cout << num%i << std::endl;
      }


      // should return 1 if "num" was composite
      // should return 0 if "num" was not composite
      return is_composite;
}
