//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

contract ContractOne
{
    event callEvent(address sender, address origin, address from,uint x);
    function callMethod()public{
        emit callEvent(msg.sender,tx.origin,address(this),10);
    }
}
contract ContractTwo
{
    function callAdress(address _address)public
    {
        address(_address).call(abi.encodeWithSignature("callMethod()"));
    }
}