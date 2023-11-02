// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

interface Isolution7 {
    function solution(address addr) external view returns (uint256 codeSize);
}

contract CTF7 is Isolution7 {
    function solution(address addr) external view override returns (uint256 codeSize) {
        assembly {
            codeSize := extcodesize(addr)
        }
    }
}
