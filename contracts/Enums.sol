// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Enums{


    enum Status {
        Accepted,
        Rejected,
        OnGoing
        }

    Status public status;

    function getStatus() public view  returns(Status)
    {
        return status;
    }

    function setStatus(Status _status) public returns(Status)
    {
        status = _status;
        return status;
    }
}