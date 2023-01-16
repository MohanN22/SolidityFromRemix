//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
contract Ifelse
{
    function condition(uint x) public view returns(uint)
    {
        if(x>10)
        {
            return 0;
        }
        else if(x<10)
        {
            return 1;
        }
        else{
            return 2;
        }
    }
    function condition2(int y) public view returns(int)
    {
        if(y<=0)
        {
            return 5;
        }
        else if(y>0 && y<=10)
        {
            return 1;
        }
        else if(y>10 && y<=20)
        {
            return 2;
        }
         else if(y>20 && y<=30)
        {
            return 3;
        }
         else 
         return 4;
        
    }
}