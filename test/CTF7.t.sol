// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import {Test, console2} from "forge-std/Test.sol";
import {CTF7} from "../src/CTF7.sol";

contract SolutionTest is Test {
    
    CTF7 public ctf7;

    function setUp() public {
        ctf7 = new CTF7();
    }

    function test_codeSize() public {
        uint256 result = ctf7.solution(address(this));
        assertEq(result, 4777, "Failed with code size");
    }
    

    function test_codeSizeNonZero() public {
        uint256 result = ctf7.solution(address(ctf7));
        assertNotEq(result, 0, "Failed with code size non-zero");
    }
    
}
