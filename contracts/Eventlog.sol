//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;
contract Eventlog
{
    event Log(address indexed sender,string message,uint indexed value);
    event Event2();

    function testWorkingEvents()public{
        emit Log(msg.sender,"BlockChain is awesome",12);
        emit Log(msg.sender,"User is successfully created!!!",13);
        emit Event2();

    }
}