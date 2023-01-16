//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;
contract CallMemSto
{
    string public sto_name="Mohan";
    function displayNameMemory(string  memory name) public pure returns(string memory)
    {
        return name;
    }
    function displayNameCallData(string  calldata name) public pure returns(string calldata)
    {
        return name;
    }
    function displayNameStorageMemory() public view returns(string memory)
    {
        
       
        return sto_name;
    }
    // function displayNameStorageCalldata() public  returns(string calldata)
    // {
        
    //     return "Mohan";
    // }

}
