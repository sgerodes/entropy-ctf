// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

contract Level_0_Solution {
    
    function solution() external pure returns(uint256) {
        assembly {
            mstore(0x0, 42)
            return(0x0, 32)
        }
    }

}