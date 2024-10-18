// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Arrays {


    uint[] public arr;
    uint[] public arr2 = [1,2,3];
    uint[10] public arr3;

    function get(uint i) public view  returns  (uint) {

        return arr[i];
    }


    function getarr() public view returns(uint[] memory) {
        return arr2;
    } 

    function push(uint i) public {
        arr.push(i);
    }

    function pop() public {
        arr.pop();
    }

    function getlen() view public returns (uint){
        return  arr.length;
    }

    function remove(uint i) public returns(uint[] memory) {
        delete arr[i];
        return arr;
    }

    function example() external {

        uint[] memory a = new uint[](5) ;
    }
}