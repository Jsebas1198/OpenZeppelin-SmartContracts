// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract JohnferCoin is ERC20Burnable, Ownable, Pausable{

    constructor() ERC20Burnable() ERC20("Johnfer Coin","JC") {
        _mint(msg.sender,1000);
    }


  

    function Pause() public onlyOwner {
        _pause();
    }
   
   
    function UnPause() public onlyOwner {
        _unpause();
    }

     function Burn(uint256 amount) public onlyOwner whenNotPaused{
         burn(amount);
    }
   
    }

