//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;
contract forloop
{
    uint[] data;
    function forLoopFunc() public returns(uint[] memory)
    {
        for(uint i=0;i<10;i++)
        {
            data.push(i);
        }
        return data;
    }
}