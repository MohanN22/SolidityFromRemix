//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;
contract memcallstorage
{
   
    struct students{
        uint id;
        string name;
        uint age;
        string grade;
        uint percentage;
    }
    students oStudents;
    mapping(uint => students) public Students;

    function setStudentMemory(uint id, string memory _name, uint _age,string memory _grade, uint _percentage)public
    {
        Students[id].id=id;
        Students[id].name=_name;
        Students[id].age=_age;
        Students[id].grade=_grade;
        Students[id].percentage=_percentage;
        students storage s_Store=Students[id];
        s_Store.name="super";
       // students memory Students=Students[id];
        //oStudents=students(name,age,grade,percentage);
    }
    function setStudentCalldata(uint id, string calldata _name, uint _age,string calldata _grade, uint _percentage)public
    {
        Students[id].id=id;
        Students[id].name=_name;
        Students[id].age=_age;
        Students[id].grade=_grade;
        Students[id].percentage=_percentage;
        //oStudents=students(name,age,grade,percentage);
    }
    
    // function setStudentCalldata(string calldata name, uint age,string calldata grade, uint percentage)public
    // {
    //     oStudents=students(name,age,grade,percentage);
    // }
    function getStudentMemory(uint id) public  returns(students memory)
    {
        
        return Students[id];
    }
}