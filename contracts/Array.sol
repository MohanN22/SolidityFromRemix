//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;
contract Arraydemo
{
    uint[] public nums=[12,13,22];
    uint[4] public fixednumber;
    function getValues()public view returns(uint[] memory)
    {
        return nums;
    }
    function getValuesFixed() public view returns(uint[4] memory)
    {
        return fixednumber;
    }
    function getLength()public view returns(uint)
    {
        return nums.length;
    }
    function addNumber(uint x)public
    {
        nums.push(x);
    }
    // function addNumberFixed(uint y)public{
    //     fixednumber.pop(y);
    // }
    function removeNumber()public
    {
        nums.pop();
    }
    function deleteNumber(uint index)public{
        delete nums[index];
    }
    function shiftNumber(uint _index,uint _no)public{
        nums[_index]=_no;
        
          
    }
}
