// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;



contract MyFirstContract
{
    string private  word = "Hello World";
    uint256 private  number = 44;

    // constructor(string memory _hello,uint256 _world)
    // {
    //     hello = _hello;
    //     world = _world;
    // }

    function UpdateWord(string memory _word) public {
        word = _word;
    }

    function UpdateNumber(uint256 _number) public {
        number = _number;
    }

    function GetWord() public view  returns (string memory )   {
          return  word;
    }

    function GetNumber() public view  returns (uint256)   {
          return  number;
    }


}