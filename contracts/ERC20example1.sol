//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ICO is ERC20,Ownable
{
    constructor() ERC20("Mohan","MOH")
    {
        _mint(msg.sender, 1000000*(10**uint256(decimals())));
    }

    function mint(address _address, uint256 amount)public onlyOwner returns(bool){
        require(_address!=address(this) && amount!=uint256(0),"ERC20 function mint invalid input");
        _mint(_address, amount);
        return true;
    }

     function burn(address _address, uint256 amount)public onlyOwner returns(bool){
        require(_address!=address(this) && amount!=uint256(0),"ERC20 function mint invalid input");
        _burn(_address, amount);
        return true;
    }
    //Increase balance in balance field
    function buy() public payable returns(bool)
    {
        require(msg.sender.balance>=msg.value && msg.value!=0 ether,"ICO : function buy invalid input");
        uint256 amount = msg.value*10;
        _transfer(owner(),_msgSender(),amount);
        return true;
    }
    //decrease balance in balance field and added to account address.
    function withdrwal(uint256 amount) public onlyOwner returns(bool)
    {
        require(amount<=address(this).balance,"ICO function withdrawl has Invalid Input");
        payable(_msgSender()).transfer(amount);
        return true;
    }

}
