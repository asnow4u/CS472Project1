
/*
      Short program to determine whether a provided positive number is composite.
*/

int main() {
      // do not chage this section
      // the following two variable names must stay the same:
      int num = 94;
      int is_composite;

      //Keep track of perfect divisions (0 as the remainder)
      int countDiv;

      //Loop through 2-9 (key values are 2, 3, 5, and 7)
      for (int i=2; i<10; i++){
         
         //Count perfect divisions
         if (num%i == 0 && num != i){
            countDiv++;
         }
      }
     
      //Set is composite based on number of perfect divisions
      if (countDiv > 0){
        is_composite = 1;
      } else {
        is_composite = 0;
      }


      // should return 1 if "num" was composite
      // should return 0 if "num" was not composite
      return is_composite;
}
