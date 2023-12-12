package com.gl.thirdQuestion;
import java.util.Arrays;

public class NumberOperations {
    public static void main(String[] args) {
        int[] inputArray = {1, 2, 3, 4, 5};
        int sum =Arrays.stream(inputArray)
                .filter(num -> num % 2 != 0)
                .map(num -> num * num)
                .sum();

        System.out.println("ODD NUMBERS: " + Arrays.toString(Arrays.stream(inputArray).filter(num -> num % 2 != 0).toArray()));
        System.out.println("SQUARES: " + Arrays.toString(Arrays.stream(inputArray).filter(num -> num % 2 != 0).map(num -> num * num).toArray()));
        System.out.println("SUM: 	"+sum);
    }
}