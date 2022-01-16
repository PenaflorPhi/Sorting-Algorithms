#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define SIZE 100000

// Generates a random number to add to the array
int rand_num(){
  int x = rand() % SIZE;
  return x;
}

// Prints the array
void print_array(int array[]){
  for (int i = 0; i < SIZE; ++i)
    printf("%d\n", array[i]);
  printf("\n");
}

// Sorting function
void sort_array(int array[]){
  int swap;
  for (int i = 1; i < SIZE; ++i){
    for (int j = i; j > 0 && array[j-1] > array[j]; --j){
      swap = array [j-1];
      array[j-1] = array[j];
      array[j] = swap;
    }
  }
}

int main(){
  srand(time(NULL)); // Seed used to generate the random numbers
// Creates a random array of number of size=SIZE
  int array[SIZE];
  for(int i = 0; i < SIZE; ++i){
    array[i] = rand_num();
  }

  print_array(array);
  sort_array(array);
  print_array(array);
 
  return 0;
}
