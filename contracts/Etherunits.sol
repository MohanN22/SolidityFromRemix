//SPDX -License-Identifier:MIT
pragma solidity ^0.8.0;

contract Etherunits
{
    uint public oneWei = 1 wei;
    bool public isOneWei = 1 wei==1;

    uint public oneEther = 1 ether;
    bool public isOneEtherwithwei = 1 ether==1000000000000000000;
    bool public isOneEther = 1 ether==1000000000000000000 wei;

    bool public isOneWeicheck = 1 wei==oneWei;
    bool public isOneEthercheck = 1 ether==oneEther;
}