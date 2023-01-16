//SPDX -License-Identifier:MIT
pragma solidity 0.8.6;

contract ViewPure{

// state variable
    uint x=1;

    // below is internal varailable
    //uint x=1;
    function addX(uint y) public view returns(uint)
    {
        //x=x+4;//not allowed//c is locar varaiable
        uint c=x+y;
        return c ;
    }
    function AddX(uint y,uint z)public pure returns(uint)
    {
        uint w=y+z;
        return w;
    }

}