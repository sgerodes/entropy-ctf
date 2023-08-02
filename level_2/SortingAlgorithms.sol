// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

contract SortingAlgorithms {
    function quickSortRec(uint[10] memory arr, int left, int right) public pure {
        int i = left;
        int j = right;
        if(i==j) return;
        uint pivot = arr[uint(left + (right - left) / 2)];
        while (i <= j) {
            while (arr[uint(i)] < pivot) i++;
            while (pivot < arr[uint(j)]) j--;
            if (i <= j) {
                (arr[uint(i)], arr[uint(j)]) = (arr[uint(j)], arr[uint(i)]);
                i++;
                j--;
            }
        }
        if (left < j)
            quickSortRec(arr, left, j);
        if (i < right)
            quickSortRec(arr, i, right);
    }

    function quickSort(uint[10] calldata unsortedArray) external pure returns (uint[10] memory sortedArray) {
        sortedArray = unsortedArray;
        quickSortRec(sortedArray, 0, int(sortedArray.length - 1));
    }

    function insertionSort(uint256[10] calldata unsortedArray) 
    external pure returns (uint256[10] memory) {
        uint256[10] memory sortedArray = unsortedArray;
        for (uint i = 0; i < sortedArray.length; i++) {
            uint temp = sortedArray[i];
            uint j;

            for (j = i; j > 0 && sortedArray[j - 1] > temp; j--) {
                sortedArray[j] = sortedArray[j - 1];
            }

            sortedArray[j] = temp;
        }
        return sortedArray;
    }

    function batchersOddEvenMergeSort4(uint256[4] memory input) public pure returns (uint256[4] memory) {
        // Step 1: Compare and swap elements (0, 1) and (2, 3)
        (input[0], input[1]) = (input[0] < input[1] ? (input[0], input[1]) : (input[1], input[0]));
        (input[2], input[3]) = (input[2] < input[3] ? (input[2], input[3]) : (input[3], input[2]));

        // Step 2: Compare and swap elements (0, 2) and (1, 3)
        (input[0], input[2]) = (input[0] < input[2] ? (input[0], input[2]) : (input[2], input[0]));
        (input[1], input[3]) = (input[1] < input[3] ? (input[1], input[3]) : (input[3], input[1]));

        // Step 3: Compare and swap elements (1, 2)
        (input[1], input[2]) = (input[1] < input[2] ? (input[1], input[2]) : (input[2], input[1]));

        return input;
    }

    function batchersOddEvenMergeSort6(uint256[6] calldata unsortedArray) 
    external pure returns (uint256[6] memory) {
        uint256[6] memory sortedArray = unsortedArray;
        
        // Sorting first half of the array
        if (sortedArray[0] > sortedArray[1]) {
            (sortedArray[0], sortedArray[1]) = (sortedArray[1], sortedArray[0]);
        }
        if (sortedArray[2] > sortedArray[3]) {
            (sortedArray[2], sortedArray[3]) = (sortedArray[3], sortedArray[2]);
        }
        if (sortedArray[0] > sortedArray[2]) {
            (sortedArray[0], sortedArray[2]) = (sortedArray[2], sortedArray[0]);
        }
        if (sortedArray[1] > sortedArray[3]) {
            (sortedArray[1], sortedArray[3]) = (sortedArray[3], sortedArray[1]);
        }
        if (sortedArray[1] > sortedArray[2]) {
            (sortedArray[1], sortedArray[2]) = (sortedArray[2], sortedArray[1]);
        }
        
        // Sorting second half of the array
        if (sortedArray[4] > sortedArray[5]) {
            (sortedArray[4], sortedArray[5]) = (sortedArray[5], sortedArray[4]);
        }
        
        // Merging the two sorted halves
        if (sortedArray[2] > sortedArray[4]) {
            (sortedArray[2], sortedArray[4]) = (sortedArray[4], sortedArray[2]);
        }
        if (sortedArray[3] > sortedArray[5]) {
            (sortedArray[3], sortedArray[5]) = (sortedArray[5], sortedArray[3]);
        }
        if (sortedArray[3] > sortedArray[4]) {
            (sortedArray[3], sortedArray[4]) = (sortedArray[4], sortedArray[3]);
        }
        
        return sortedArray;
    }
}
