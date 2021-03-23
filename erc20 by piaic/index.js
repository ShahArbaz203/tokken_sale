pragma solidity ^0.5.0;
contract BCCToken{
    string private name;
    string public symbol;
    uint public decimals;
    uint256 public totalSupply;
     
     mapping (address => uint256) public balanceOf;
     mapping(address => mapping(address => uint256)) public allowance;
     event Transfer(address indexed from,address indexed to,uint256 amount);
    event Approval (address indexed owner,address indexed spender,uint256 amount);
    constructor () public {
        name ="BCC Token";
        symbol ="BCT";
        decimals = 18;
        totalSupply = 10000* 10 **uint(decimals);
        balanceOf[msg.sender] = totalSupply;
    
    }
    function transfer(address to,uint256 amount) public{
        require (to != address(0),"Invalid address");
        balanceOf[msg.sender] -=amount;
        balanceOf[to] += amount;
        emit Transfer(msg.sender,to,amount);
        
    }
    function approve (address spender,uint256 amount) public{
        allowance[msg.sender][spender];
        emit Approval(msg.sender,spender,amount);
    }
    function transferFrom(address from,address to,uint256 amount) public{
        require (amount <= balanceOf[from]);
        require(amount <= allowance[from][msg.sender]);
        balanceOf [from] -=amount;
        balanceOf[to] += amount;
        allowance [to][msg.sender] -=amount;
        emit Transfer(from,to,amount);
    }
}