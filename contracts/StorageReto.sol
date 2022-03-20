// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/access/AccessControl.sol";

contract StorageReto is AccessControl {

     
    bytes32 public constant ADMIN = keccak256("ADMIN");
    bytes32 public constant WRITER = keccak256("WRITER");
        uint256 number;

 constructor() {
        _grantRole(ADMIN, msg.sender);
    }

 modifier onlyWriter(){
         require( hasRole( WRITER, msg.sender ), "Esta funcion solo puede ser utilizada por los writers" );

         _;
     }
   
   modifier onlyAdmin(){
         require( hasRole(ADMIN, msg.sender ), "Esta funcion solo puede ser utilizada por el ADMIN" );

         _;
     }



    function store(uint256 num) public onlyWriter() {
         
        number = num;
    }

    
    

    function revokeRol(address account)public onlyAdmin {
            _revokeRole(WRITER,account);
    }

       function setRol( address account ) public onlyAdmin {
        _grantRole( WRITER, account );
    }

    function retrieve() public view returns (uint256){
        return number;
    }
}