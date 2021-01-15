// SPDX-License-Identifier: MIT
pragma solidity ^0.7.4;

contract DappToken{
    //Constructor
    //set the total number of token
    //Read the total number of token

    uint256 public totalSupply;
    
    function dappToken() public{
        totalSupply = 1000000;
    }

}