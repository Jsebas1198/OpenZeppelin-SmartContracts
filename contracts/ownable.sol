// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
import "@openzeppelin/contracts/ownership/Ownable.sol";

contract NewContract is Ownable {

    function normalThing() public {
        
    }

    function specialThing() public onlyOwner {
        
    }
}