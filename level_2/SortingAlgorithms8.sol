// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

contract SortingAlgorithms {
    function quickSortRec8(uint[8] memory arr, int left, int right) internal pure {
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
            quickSortRec8(arr, left, j);
        if (i < right)
            quickSortRec8(arr, i, right);
    }

    function quickSort8(uint[8] calldata unsortedArray) external pure returns (uint[8] memory sortedArray) {
        sortedArray = unsortedArray;
        quickSortRec8(sortedArray, 0, int(sortedArray.length - 1));
    }

    function insertionSort8(uint256[8] calldata unsortedArray) 
    external pure returns (uint256[8] memory) {
        uint256[8] memory sortedArray = unsortedArray;
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
function batchersOddEvenMergeSort8(uint256[8] calldata unsortedArray) 
    external pure returns (uint256[8] memory) {
        uint256[8] memory sortedArray = unsortedArray;
        
        // Initial pairwise comparisons and swaps
        for(uint i = 0; i < 8; i += 2) {
            if(sortedArray[i] > sortedArray[i+1]) {
                (sortedArray[i], sortedArray[i+1]) = (sortedArray[i+1], sortedArray[i]);
            }
        }

        // Four-element comparisons and swaps
        for(uint i = 0; i < 8; i += 4) {
            if(sortedArray[i] > sortedArray[i+2]) {
                (sortedArray[i], sortedArray[i+2]) = (sortedArray[i+2], sortedArray[i]);
            }
            if(sortedArray[i+1] > sortedArray[i+3]) {
                (sortedArray[i+1], sortedArray[i+3]) = (sortedArray[i+3], sortedArray[i+1]);
            }
        }

        // Fix up step for the four-element subsequences
        if(sortedArray[1] > sortedArray[2]) {
            (sortedArray[1], sortedArray[2]) = (sortedArray[2], sortedArray[1]);
        }

        // Eight-element comparisons and swaps
        if(sortedArray[0] > sortedArray[4]) {
            (sortedArray[0], sortedArray[4]) = (sortedArray[4], sortedArray[0]);
        }
        if(sortedArray[1] > sortedArray[5]) {
            (sortedArray[1], sortedArray[5]) = (sortedArray[5], sortedArray[1]);
        }
        if(sortedArray[2] > sortedArray[6]) {
            (sortedArray[2], sortedArray[6]) = (sortedArray[6], sortedArray[2]);
        }
        if(sortedArray[3] > sortedArray[7]) {
            (sortedArray[3], sortedArray[7]) = (sortedArray[7], sortedArray[3]);
        }

        // Final fix up steps for the eight-element sequence
        if(sortedArray[1] > sortedArray[4]) {
            (sortedArray[1], sortedArray[4]) = (sortedArray[4], sortedArray[1]);
        }
        if(sortedArray[3] > sortedArray[6]) {
            (sortedArray[3], sortedArray[6]) = (sortedArray[6], sortedArray[3]);
        }
        if(sortedArray[2] > sortedArray[5]) {
            (sortedArray[2], sortedArray[5]) = (sortedArray[5], sortedArray[2]);
        }
        if(sortedArray[1] > sortedArray[2]) {
            (sortedArray[1], sortedArray[2]) = (sortedArray[2], sortedArray[1]);
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
