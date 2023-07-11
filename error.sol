// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// require, revert, assert

contract Operations {
    
    // require statement
    function divide(uint _dividend, uint _divisor) public pure returns (uint) {
      
        require(_divisor != 0, "Divisor must not be zero.");

        uint result = _dividend / _divisor;

        return result;
    }

    // revert statement
    function square(uint _mul) public pure returns(uint){
        
        if (_mul <= 1) {
            revert("number must be at least greater than 1.");
        }
      else{
        uint result= _mul*_mul;
        return result;}
    }  

    // assert statement
    function subtract(uint _a, uint _b) public pure returns (uint) {
        // Using assert to ensure that the subtraction does not result in an underflow
        assert(_a >= _b);

        return _a - _b;
    }
}
