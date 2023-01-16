// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract MutlisigWallet{
    event Deposit(address indexed sender, uint amount, uint balance);
    event SubmitTransaction(
        address indexed owner,
        uint indexed txIndex,
        address indexed to,
        uint value,
        bytes data
    );
    event ConfirmTransaction(
        address indexed owner,
        uint indexed txIndex
    );
    event RevokeTransaction(address indexed owner, uint indexed txIndex);
    event ExecuteTransaction(address indexed owner, uint indexed txIndex);
    address[] public owners;
    mapping(address=>bool) public isOwner;
    uint public numConfirmationsRequired;

    struct Transaction{
        address to;
        uint value;
        bytes data;
        bool executed;
        uint numConfirmations; 

    }
    mapping(uint=>mapping(address=>bool)) public isConfirmed;
    Transaction[] public transactions;

    modifier onlyOwner()
    {
        require(isOwner[msg.sender],"Not the owner");
        _;
    }
    modifier txExists(uint _txIndex){
        require(_txIndex<transactions.length,"transaction does not exist");
        _;
    }
    modifier notExecuted(uint _txIndex)
    {
        require(!transactions[_txIndex].executed,"tx already executed");
        _;
    }
    modifier notConfirmed(uint _txIndex){
        require(!isConfirmed[_txIndex][msg.sender],"tx already confirmed");
        _;
    }
    constructor(address[] memory _owners, uint _numConfirmationRequired){
        require(_owners.length>0,"at least one owner required");
        require(_numConfirmationRequired>0 && _numConfirmationRequired<=_owners.length,
        "Invalid number of required confirmations in constructor");
        for(uint i=0;i<_owners.length;i++)
        {
            address owner=_owners[i];
            require(owner!=address(0),"Invalid owner");
            require(!isOwner[owner],"Owner not unique");
            isOwner[owner]=true;
            owners.push(owner);
        }
        numConfirmationsRequired=_numConfirmationRequired;
        

    }

    receive () external payable{
        emit Deposit(msg.sender,msg.value,address(this).balance);
    }
    function confirmTransaction(uint _txIndex)public onlyOwner 
    txExists(_txIndex)
    notExecuted(_txIndex)
    notConfirmed(_txIndex){
        Transaction storage transaction = transactions[_txIndex];
        transaction.numConfirmations+=1;
        isConfirmed[_txIndex][msg.sender]=true;

        emit ConfirmTransaction(msg.sender,_txIndex);
    }
    
    function submitTransaction(
        address _to,
        uint _value,
        bytes memory _data
    ) public onlyOwner{
        uint txIndex=transactions.length;

        transactions.push(
            Transaction({
                to: _to,
                value:_value,
                data:_data,
                executed:false,
                numConfirmations:0
            })
        );
        emit SubmitTransaction(msg.sender,txIndex,_to,_value,_data);
    }
}
