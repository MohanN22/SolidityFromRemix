//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Mycontract is Ownable{
    function normalFunction() external pure returns(string memory){
        return ("anyone can call this function");
    }
    function speicialFunction() external view onlyOwner returns(string memory)
    {
       
        return ("Only owner can call this special function");
    }
}
