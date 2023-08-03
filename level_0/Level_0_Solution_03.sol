// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

contract Level_0_Solution {
    function solution() external pure returns(uint256) {
        assembly {
            let p := 0x40
            mstore8(p, 42)
            return(p, 1)
        }
    }
}
