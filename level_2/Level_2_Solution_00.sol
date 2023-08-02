// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

contract Level_2_Solution  {
    
    function solution(uint256[10] calldata unsortedArray) 
    external pure returns (uint256[10] memory) {
        uint256[10] memory sortedArray = unsortedArray;
        
        for(uint i = 0; i<sortedArray.length; i++) {
            for(uint j = 0; j<sortedArray.length-i-1; j++) {
                if(sortedArray[j] > sortedArray[j+1]) {
                    // Swap elements
                    uint temp = sortedArray[j];
                    sortedArray[j] = sortedArray[j+1];
                    sortedArray[j+1] = temp;
                }
            }
        }
        
        return sortedArray;
    }
}
