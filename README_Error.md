# Error Handling

This Solidity program demonstrates the basic syntax and functionality of require(), assert() and revert() statements.


## Description

The Solidity code is a smart contract named "Operations" that specifies the functionality of require(),revert() and assert() statements. It contains three functions: "divide", "square", and "subtract". Each function performs a different mathematical operation.

#### require statement:
The "require" statement is used in the "divide" function to validate a condition before executing further. In this case, it checks if the "_divisor" is not equal to zero. If the condition is false (divisor is zero), the "require" statement throws an exception and reverts the transaction, providing the specified error message "Divisor must not be zero." This ensures that the division operation is performed only when the divisor is non-zero.

#### revert statement:
The "revert" statement is used in the "square" function to revert the transaction if a specific condition is not met. Here, it checks if the "_mul" is less than or equal to 1. If this condition is true, the "revert" statement is triggered, and the transaction is reverted with the error message "number must be at least greater than 1." This guards against invalid input values and prevents the execution of further code in such cases.

#### assert statement:
The "assert" statement is used in the "subtract" function to assert a condition that must always be true. It is used to check if "_a" is greater than or equal to "_b" before performing the subtraction operation. If the condition is false (i.e., _b is greater than _a), the "assert" statement throws an exception, indicating an unexpected condition or bug in the code. The transaction will be reverted, and the execution will not proceed further. The "assert" statement is typically used to check for logical errors and ensure certain conditions that are crucial for the correct execution of the contract.

In summary, "require" and "revert" statements are used for handling expected conditions and validation checks, while the "assert" statement is used for checking unexpected conditions and detecting bugs. They help in maintaining the correctness and integrity of the smart contract by enforcing certain conditions that must be met during execution.


## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

```javascript
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
```
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile HelloWorld.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar.

Enter the values to check the condition of the above three statements.
## Authors
B Devi
[B Devi](devibattini@gmail.com)


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
