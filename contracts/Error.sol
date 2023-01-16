//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

contract A
{
    function doSomething(uint x) external
    {
        if(x>10)
        {
             revert("do somthing is called");
        }
    }
}
contract B
{
    A a = new A();
    string public status="Not Available";

    function go(uint x) public 
    {
        try a.doSomething(x)
        {
            status="success";
        }catch
        {
            status ="Failuer";
        }
    }
}