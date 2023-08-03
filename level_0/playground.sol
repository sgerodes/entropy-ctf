// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

contract Level_0_Solution {
    
    function asembly_solution() external pure returns(uint8) {
        // 197
        assembly {
            mstore(0x0, 42)
            return(0x0, 32)
        }
    }

    function play_0() external pure returns(uint8) {
        assembly {
            mstore(0x0, 42)
            return(0x0, 1)
        }
    }
    function play_1() external pure returns(uint256) {
        assembly {
            let p := mload(0x40)
            mstore(p, 42)
            return(p, 32)
        }
    }

    function asembly_256_solution() external pure returns(uint256) {
        // 153
        assembly {
            mstore(0x0, 42)
            return(0x0, 32)
        }
    }

    function asembly_inline_256_solution() external pure returns(uint256 f) {
        // 315
        assembly {
            f := 42
        }
    }

    function asembly_inline_i256_solution() external pure returns(int256 f) {
        // 315
        assembly {
            f := 42
        }
    }

    function asembly_inline_i8_solution() external pure returns(int8 f) {
        // 315
        assembly {
            f := 42
        }
    }
    function asembly_inline_8_solution() external pure returns(uint8 f) {
        // 315
        assembly {
            f := 42
        }
    }

    function simple_256_solution() external pure returns(uint256) {
        // 381
        return 42;
    }

    function simple_128_solution() external pure returns(uint128) {
        // 321
        return 42;
    }

    function simple_64_solution() external pure returns(uint64) {
        // 366
        return 42;
    }

    function simple_32_solution() external pure returns(uint32) {
        // 409
        return 42;
    }

    function simple_16_solution() external pure returns(uint16) {
        // 344
        return 42;
    }

    function simple_8_solution() external pure returns(uint8) {
        // 431
        return 42;
    }

    function simple_var_solution() external pure returns(uint) {
        // 
        return 42;
    }

    function simple_i256_solution() external pure returns(int256) {
        // 
        return 42;
    }

    function simple_i128_solution() external pure returns(int128) {
        // 
        return 42;
    }

    function simple_i64_solution() external pure returns(int64) {
        // 
        return 42;
    }

    function simple_i32_solution() external pure returns(int32) {
        // 
        return 42;
    }

    function simple_i16_solution() external pure returns(int16) {
        // 
        return 42;
    }

    function simple_i8_solution() external pure returns(int8) {
        // 
        return 42;
    }

    function simple_ivar_solution() external pure returns(int) {
        // 
        return 42;
    }
}