//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;
contract Structure
{
    struct Book {
        string title;
        string author;
        uint bookID;
        uint price;
    }
    Book book;

    function setBook() public
    {
        book=Book("Blockchain",'Mohan',22,1000);
    }
    function getBookID() public view returns(uint)
    {
        return book.bookID;
    }
    function getTitle() public view returns(string memory)
    {
        return book.title;
    }
}