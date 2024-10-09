// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract constructorim {
    string public deneme = "selamlar";
    

    constructor(string memory _deneme)
    {
        deneme = _deneme;
     
    }



}


contract constructorim2 {
string public naber = "dunya";

    constructor(string memory _naber) {
           naber= _naber;
    }


}

contract denemekontrati  is constructorim, constructorim2 {

    constructor() constructorim("selamlaraq") constructorim2("nabersin") {}

}