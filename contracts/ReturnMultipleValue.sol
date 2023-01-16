//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;
contract ReturnMultipleValue{
    function returnThree() public pure returns(uint,bool,uint)
    {
        return (5,true,100);
    }
    function returnMultiple() public pure returns(uint,bool,uint,uint,bool)
    {
        return (5,true,100,12,false);
    }
    function returnNamed() public pure returns(uint x, bool y, int z)
    {
        return(10,true,-12);
    }
    function AssignValues() public pure returns(uint x, bool y, int z)
    {
        x=30;
        y=false;
        z=-20;
        return (x,y,z);
    }
    function DeafultValue()public pure returns(uint x,bool y, int z)
    {
        return (x,y,z);
    }
    function destructuing() public pure returns(uint,bool,uint,uint,uint)
    {
        (uint x,bool y,uint z)=returnThree();
        x=x+300;
        (uint a,,uint b)=(10,20,30);
        return (x,y,z,a,b);
    }
    
   
}

contract SecondFunction{
    function SecondFunctionContract(uint x, uint y, uint z,address a, bool b,string memory c,uint s)
    public pure returns(uint,uint,uint,address,bool,string memory,uint){
        return (x,y,z,a,b,c,s);
    }
    function callFunction() external  returns(uint,uint,uint,address,bool,string memory,uint)
    {
       return SecondFunctionContract(1,2,3,msg.sender,true,"BlockChain",11);
        
    }

    function messageSender() external view returns(address)
    {
        return msg.sender;
    }
}
contract ThirdFunction
{
    function ThirdValueFunction(address a,bool b)public pure returns(address,bool){
        return(a,b);
    }
    function callThirdFunction() external view returns(address,bool)
    {
        return ThirdValueFunction(address(0),true);
    }
    function CallThirdFunctionwithkeyValue()external view returns(address,bool)
    {
        return ThirdValueFunction({a:address(0),b:true});
        
    }
}