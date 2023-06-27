// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract errorHandling {

    function testAssert(uint num) public pure returns (uint){
        assert(num != 0);
        return num;
    }

    function mul(uint a , uint b) public pure returns(uint) {
        require ((a != 0 && b != 0), "We don't want value to be zero");
        return a*b;
    }

    function divide(uint _numerator , uint _denominator) public pure returns(uint){
        assert(_denominator != 0);

        if(_numerator < _denominator){
            revert("Numerator must be greater!!");
        }

        else{
            return _numerator / _denominator;
        }
    }
}
