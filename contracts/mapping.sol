//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;
contract mappingexample1
{
    // mapping(address => uint) public myadd;
    // function get(address saddress) public view returns(uint)
    // {
    //     return myadd[saddress];

    // }
    // function set(address saddress,uint x)public{
    //     myadd[saddress]=x;
    // }
    mapping(address => bool) public myaddbool;
    function setTF(address saddress1, bool y) public
    {
        myaddbool[saddress1]=y;
    }
    function getTF(address saddress1) public view returns(bool)
    {
        return myaddbool[saddress1];
    }
    mapping(address=>string) public mystring;
    function setString(address sadd, string memory name ) public
    {
        mystring[sadd]=name;
    }
    function getSting(address sadd)public view returns(string memory)
    {
        return mystring[sadd];
    }
}