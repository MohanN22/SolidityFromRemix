//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

contract A{

uint public num;
    constructor() {
        num=15;

    }
    
}

contract B is A{
    // constructor()
    // {
    //     num=20;
    // }
    constructor(uint x)
    {
        num=x;
    }
    function update(uint x) public  returns(uint)
    {
        num=num+x;
    }
}

