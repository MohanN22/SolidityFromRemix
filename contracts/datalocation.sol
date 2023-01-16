//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;
contract Datalocation
{
    //storage state varailable
    string Accountname="Ineuron";
    function displayAccName()public view returns(string memory)
    {
        string storage newVariable;
        return Accountname;
    }
}