//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;
contract CallFunctionGasCalc
{
    string public str="Blockchain";
    function updateString(string memory _str)public payable returns(uint,uint)
    {
        address a_address=0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
        uint initial_gas=gasleft();
        require(msg.value== 1 ether);
        str=_str;
        address payable owner = payable(msg.sender);
        (bool success,)=a_address.call{value:msg.value} ("failed transfer");
        require(success, "Tranfer is Failed");
        return(initial_gas,initial_gas-gasleft());
    }
}
