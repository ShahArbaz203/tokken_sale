// SPDX-License-Identifier: MIT
pragma solidity ^0.7.4;

contract DappToken{
    //Constructor
    //set the total number of token
    //Read the total number of token

    mapping(address => uint256) public balanceOf;

    uint256 public totalSupply;
    
    constructor (uint256 _initialSupply){
        balanceOf[msg.sender] = _initialSupply;
        totalSupply = _initialSupply;
        //allocate the initial supply
    }

}