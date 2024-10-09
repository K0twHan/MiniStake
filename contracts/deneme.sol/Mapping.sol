// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;


contract Mapping {
    mapping(address => uint) public mymap;


    function get(address _address) public view returns (uint) {

       return mymap[_address];
    } 

    function set(address _address,uint _i) public returns(bool){
        mymap[_address] = _i;
        return true;
    }

    function remove(address _address) public returns (bool) {

        delete mymap[_address];
        return true;

    }


}


contract NestedMapping {
    mapping(address => mapping(uint => bool)) public nested;

    function get(address _addr,uint _i) public view returns(bool)
    {
        return  nested[_addr][_i];

    }

    function set(address _addr,uint _i,bool _boo) public {

        nested[_addr][_i] = _boo;
    }

    function remove(address _addr,uint _i) public {
        delete nested[_addr][_i];
    }

}