// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

contract SortingAlgorithms {
    function quickSortRec10(uint[10] memory arr, int left, int right) internal pure {
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
            quickSortRec10(arr, left, j);
        if (i < right)
            quickSortRec10(arr, i, right);
    }

    function quickSort10(uint[10] calldata unsortedArray) external pure returns (uint[10] memory sortedArray) {
        sortedArray = unsortedArray;
        quickSortRec10(sortedArray, 0, int(sortedArray.length - 1));
    }

    function insertionSort10(uint256[10] calldata unsortedArray) 
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
function optimal_10_input_sorting_network(uint256[10] calldata unsortedArray) 
    external pure returns (uint256[10] memory) {
        uint256[10] memory sortedArray = unsortedArray;
        
        if(sortedArray[0] > sortedArray[8]) {
          (sortedArray[0], sortedArray[8]) = (sortedArray[8], sortedArray[0]);
        }
        if(sortedArray[1] > sortedArray[9]) {
          (sortedArray[1], sortedArray[9]) = (sortedArray[9], sortedArray[1]);
        }
        if(sortedArray[2] > sortedArray[7]) {
          (sortedArray[2], sortedArray[7]) = (sortedArray[7], sortedArray[2]);
        }
        if(sortedArray[3] > sortedArray[5]) {
          (sortedArray[3], sortedArray[5]) = (sortedArray[5], sortedArray[3]);
        }
        if(sortedArray[4] > sortedArray[6]) {
          (sortedArray[4], sortedArray[6]) = (sortedArray[6], sortedArray[4]);
        }
        if(sortedArray[0] > sortedArray[2]) {
          (sortedArray[0], sortedArray[2]) = (sortedArray[2], sortedArray[0]);
        }
        if(sortedArray[1] > sortedArray[4]) {
          (sortedArray[1], sortedArray[4]) = (sortedArray[4], sortedArray[1]);
        }
        if(sortedArray[5] > sortedArray[8]) {
          (sortedArray[5], sortedArray[8]) = (sortedArray[8], sortedArray[5]);
        }
        if(sortedArray[7] > sortedArray[9]) {
          (sortedArray[7], sortedArray[9]) = (sortedArray[9], sortedArray[7]);
        }
        if(sortedArray[0] > sortedArray[3]) {
          (sortedArray[0], sortedArray[3]) = (sortedArray[3], sortedArray[0]);
        }
        if(sortedArray[2] > sortedArray[4]) {
          (sortedArray[2], sortedArray[4]) = (sortedArray[4], sortedArray[2]);
        }
        if(sortedArray[5] > sortedArray[7]) {
          (sortedArray[5], sortedArray[7]) = (sortedArray[7], sortedArray[5]);
        }
        if(sortedArray[6] > sortedArray[9]) {
          (sortedArray[6], sortedArray[9]) = (sortedArray[9], sortedArray[6]);
        }
        if(sortedArray[0] > sortedArray[1]) {
          (sortedArray[0], sortedArray[1]) = (sortedArray[1], sortedArray[0]);
        }
        if(sortedArray[3] > sortedArray[6]) {
          (sortedArray[3], sortedArray[6]) = (sortedArray[6], sortedArray[3]);
        }
        if(sortedArray[8] > sortedArray[9]) {
          (sortedArray[8], sortedArray[9]) = (sortedArray[9], sortedArray[8]);
        }
        if(sortedArray[1] > sortedArray[5]) {
          (sortedArray[1], sortedArray[5]) = (sortedArray[5], sortedArray[1]);
        }
        if(sortedArray[2] > sortedArray[3]) {
          (sortedArray[2], sortedArray[3]) = (sortedArray[3], sortedArray[2]);
        }
        if(sortedArray[4] > sortedArray[8]) {
          (sortedArray[4], sortedArray[8]) = (sortedArray[8], sortedArray[4]);
        }
        if(sortedArray[6] > sortedArray[7]) {
          (sortedArray[6], sortedArray[7]) = (sortedArray[7], sortedArray[6]);
        }
        if(sortedArray[1] > sortedArray[2]) {
          (sortedArray[1], sortedArray[2]) = (sortedArray[2], sortedArray[1]);
        }
        if(sortedArray[3] > sortedArray[5]) {
          (sortedArray[3], sortedArray[5]) = (sortedArray[5], sortedArray[3]);
        }
        if(sortedArray[4] > sortedArray[6]) {
          (sortedArray[4], sortedArray[6]) = (sortedArray[6], sortedArray[4]);
        }
        if(sortedArray[7] > sortedArray[8]) {
          (sortedArray[7], sortedArray[8]) = (sortedArray[8], sortedArray[7]);
        }
        if(sortedArray[2] > sortedArray[3]) {
          (sortedArray[2], sortedArray[3]) = (sortedArray[3], sortedArray[2]);
        }
        if(sortedArray[4] > sortedArray[5]) {
          (sortedArray[4], sortedArray[5]) = (sortedArray[5], sortedArray[4]);
        }
        if(sortedArray[6] > sortedArray[7]) {
          (sortedArray[6], sortedArray[7]) = (sortedArray[7], sortedArray[6]);
        }
        if(sortedArray[3] > sortedArray[4]) {
          (sortedArray[3], sortedArray[4]) = (sortedArray[4], sortedArray[3]);
        }
        if(sortedArray[5] > sortedArray[6]) {
          (sortedArray[5], sortedArray[6]) = (sortedArray[6], sortedArray[5]);
        }

        return sortedArray;
    }
}
