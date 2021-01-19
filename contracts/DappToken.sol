// SPDX-License-Identifier: MIT
pragma solidity ^0.7.4;

contract DappToken{
    //Name
    string public name = "DApp Token";
    //Symbol
 string public symbol = "DAPP";
 string public standard = "DApp Token v1.0";
  uint256 public totalSupply;


  
event Transfer(
address indexed _from,
address indexed _to,
uint256 _value
);

 //transfer event
 event Approval(
address indexed _owner,
address indexed _spender,
uint256 indexed _value
 );

    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;
  //allowance
  
    
    constructor (uint256 _initialSupply){
        balanceOf[msg.sender] = _initialSupply;
        totalSupply = _initialSupply;
        //allocate the initial supply
    }
    //Transfer
    
     
    function transfer(address _to, uint256 _value) public   returns (bool  success)
    {


        


       require( balanceOf[msg.sender] >= _value);
       //Transfer the balance

       balanceOf[msg.sender] -=_value;
       balanceOf[_to] +=_value;
       emit Transfer(msg.sender,_to,_value);
       return true;
    
    }

   //approve

   function approve(address _spender, uint256 _value) public returns (bool success){
       //allowance
  allowance[msg.sender][_spender] = _value; 
     //Approve event
     
      Approval(msg.sender, _spender, _value);


      return true;
       
   }
   //thansfer from
}
