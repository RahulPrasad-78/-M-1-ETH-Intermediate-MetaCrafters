// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract ErrorHandling {
    uint public a =0;
    uint public b = 10;
    address public owner;

    constructor(){
        owner = msg.sender;
    }

    function test1() view public{
        require(owner == msg.sender, "Invalid Owner");
    }

    function test2() public{
        assert(a<b);
        a++;
    }

    function test3() view public{
        if(a+b>0){
            revert("a + b is Greater than 0");
        }
    }
}
