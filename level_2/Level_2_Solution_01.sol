// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

contract Level_2_Solution  {
    function solution(uint256[10] calldata unsortedArray) 
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

}