//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Bank
{
address og;

constructor()
{
og = msg.sender;
}

function deposit() public payable{}

function getBalance () public view returns (uint)
{
return address(this).balance;
}

function withdraw (uint _amount) public
{
require (msg.sender == og , "Unauthorised access");
require ( address(this).balance >= _amount , "Insufficient Balance");
payable(msg.sender).transfer(_amount);
}

}



