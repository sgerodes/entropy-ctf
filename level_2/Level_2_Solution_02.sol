// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

contract Level_2_Solution  {

    /*
        this is the most optimal sorting for a fixed array of 10 elements
        The solutions uses the 29 comparisons sorting network
    */
    function solution(uint256[10] calldata unsortedArray) 
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