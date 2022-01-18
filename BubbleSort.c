#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define SIZE 50000

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
  int flag = 0;
  int swap = 0;
  while (flag == 0){
    for (int i = 0; i < SIZE - 1; ++i){
      if (array[i+1] < array [i]){
        flag = 1;
        swap = array[i+1];
        array[i+1] = array[i];
        array[i] = swap;
      }
    }
    if (flag == 1){
      flag = 0;
    } else {
      flag = 1;
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
