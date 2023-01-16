//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

library RemoveIndex
{
    function remove(uint[] storage arr, uint index)public{
        require(arr.length>0,"cant remove empty array");
       arr[index]=arr[arr.length-1];
       arr.pop();
    }
}
contract TestArray{
    uint[] public arr;
    using RemoveIndex for uint[];
    function testArrayRemoval()public returns(uint[] memory){
        for(uint i=1;i<10;i++)
        {
            arr.push(i*5);
        }
        arr.remove(3);
        return(arr);
    }
}