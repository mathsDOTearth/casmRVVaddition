/* 
 * program to add two 4 evelmet vectors together
 * using RISC-V RVV assembly instructions
 */
 
#include <stdio.h>

// Function prototype for the vec_add assembly function
void vec_add(int *vec1, int *vec2, int *result);

int main() {
    // Initialize two small vectors and a result vector
    int vectorA[4] = {1, 2, 3, 4};
    int vectorB[4] = {5, 6, 7, 8};
    int vectorC[4] = {0};

    // Output vectorA and vectorB to the terminal
    printf("Vector A: ");
    for (int i = 0; i < 4; i++) {
        printf("%2d ", vectorA[i]);
    }
    printf("\n");

    printf("Vector B: ");
    for (int i = 0; i < 4; i++) {
        printf("%2d ", vectorB[i]);
    }
    printf("\n");

    // Call the vec_add assembly function to add 
    // vectorA and vectorB and return vectorC
    vec_add(vectorA, vectorB, vectorC);

    // Output the result to the terminal
    printf("vector C: ");
    for (int i = 0; i < 4; i++) {
        printf("%2d ", vectorC[i]);
    }
    printf("\n");

    return 0;
}

