# Using the Isolution7 interface write a function that takes an address and returns the codeSize of that address as a uint256.

    interface Isolution7 {
        function solution(address addr) external view returns (uint256 codeSize);
    }

**Deploy:**

**To Deploy and Run script just add private key with no double quotes**

    forge create --rpc-url https://eth-sepolia.g.alchemy.com/v2/L8b_wM9C0XY0rMDwmGshrCG8W4e2SJLk --private-key xxx src/CTF7.sol:CTF7

**deployed to:**
