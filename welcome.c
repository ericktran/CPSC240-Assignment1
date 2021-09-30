#include <stdio.h>
#include <stdint.h>
long int hello();
int main(){
  long int result_code = -999;
  printf("Welcome to the classic 'Hello' program created by Erick Tran\n");
  result_code = hello();
  printf("%s%ld\n", "The main received this integer: ", result_code);
  return 0;
}
