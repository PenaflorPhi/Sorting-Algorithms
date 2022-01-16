#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define SIZE 1000000

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


// Creates two partitions on the array based on the pivot value
int partition(int array[], int low, int high){
  int pivot = array[low];
  int left = low + 1;
  int right = high;
  int swap = 0;
  while(1){
    while(left <= right && array[left] <= pivot){
      ++left;
    }
    while(left <= right && array[right] >= pivot){
      --right;
    }
    if (right < left){
      break;
    } 
    else{
      swap = array[left];
      array[left] = array [right];
      array[right] = swap;
    }
  }
  swap = array[low];
  array[low] = array[right];
  array[right] = swap;

  return right;
}

// Sorting function
void sort_array(int array[], int low, int high){
  if(low < high){
    int pivot = partition(array, low, high);
    sort_array(array, low, pivot - 1);
    sort_array(array, pivot + 1, high);
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
  sort_array(array, 0, SIZE - 1);
  print_array(array);


  return 0;
}
