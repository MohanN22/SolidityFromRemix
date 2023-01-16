//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;
contract DataLocation{
    struct MyStruct
    {
        uint foo;
        string text;
    }
    mapping(address=>MyStruct) public myStruct;
    function example(uint y,address source ,string memory s)external returns(MyStruct memory)
    {
        myStruct[source]=MyStruct({foo:y,text:s});
        MyStruct storage objmyStruct=myStruct[msg.sender];
        objmyStruct.text="Krithin";
        MyStruct memory readOnly=myStruct[msg.sender];
        readOnly.foo=100;
        _internal(y);
        // uint[] memory memArray=new uint[](3);
        // memArray[0]=234;
        return objmyStruct;
    }
    // function example(uint[] calldata y, string memory s)external returns(uint[] memory)
    // {
    //     myStruct[msg.sender]=MyStruct({foo:10,text:"Mohan"});
    //     MyStruct storage objmyStruct=myStruct[msg.sender];
    //     objmyStruct.text="Krithin";
    //     _internal(y);
    //     uint[] memory memArray=new uint[](3);
    //     memArray[0]=234;
    //     return memArray;
    // }
    // function _internal(uint[] calldata y)public pure returns(uint)
    // {
    //     uint x=y[1];
    //     return x;
    // }
    function _internal(uint y)public pure returns(uint)
    {
        uint x=y;
        return x;
    }
}