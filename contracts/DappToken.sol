// SPDX-License-Identifier: MIT
pragma solidity ^0.7.4;

contract DappToken{
    //Name
    string public name = "DApp Token";
    //Symbol
 string public symbol = "DAPP";
 string public standard = "DApp Token v1.0";

    mapping(address => uint256) public balanceOf;

    uint256 public totalSupply;
    
    constructor (uint256 _initialSupply){
        balanceOf[msg.sender] = _initialSupply;
        totalSupply = _initialSupply;
        //allocate the initial supply
    }

}