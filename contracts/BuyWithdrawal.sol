//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract BuyWithdraw is ERC20,Ownable 
{
    constructor() ERC20("NIHA","NA")
    {
        //_mint(msg.sender,1000000);
        _mint(msg.sender, 1000000*(10**uint256(decimals())));
    }
    // function buy()public payable returns(bool){
    //     require(msg.sender.balance>=msg.value && msg.value != 0 ether,"ERC20 buy function input is invalid");
    //     uint256 amount=msg.value;
    //     _transfer(owner(),_msgSender(),amount);
    //     return(true);
    // }

    function buy() public payable returns (bool) {
      require(msg.sender.balance >= msg.value && msg.value != 0 ether, "ICO: function buy invalid input");
      uint256 amount = msg.value * 1000;
      _transfer(owner(), _msgSender(), amount);
      return true;
    }
    function withdraw
}