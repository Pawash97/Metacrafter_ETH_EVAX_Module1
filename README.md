# Error Handling
This is a solidity smart contract that demonstrates error handling with the help of `assert` , `revert` and `require` functions.

## Description
This solidity contract explains the basic error handling concepts in solidity programming.
This is done by using functions like `assert`, `revert` and `require` functions.
This contract takes you through these functions , their usage, functionality and syntax.

## Getting Started

### Executing program
To run this program, you can use `Remix`, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

```
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
```
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile errorHandling.sol" button.

Once the code is compiled, you can `deploy` the contract by clicking on the `"Deploy & Run Transactions"` tab in the left-hand sidebar. Select the `"errorHandling"` contract from the dropdown menu, and then click on the `"Deploy"` button.

### `testAssert(uint num)`
- This function demonstrates the use of `assert` function.
- using `assert` function we check if the value provided is 0 or not.
- If the value is 0 , the exection is stopped.

### `mul(uint a , uint b)`
- This function demonstrates the usage of `require` function.
- It takes two parametes a and b , performs `multiplication` and displays the result.
- The require function is used to check if `a` or `b` is equal to zero.
- If the condition fails, it `reverts` the transaction with a custom error message stating that the value of `a` or `b` should not be zero.
- If the condition is met, it returns the result of the multiplication.

### `divide(uint _numerator , _denominator)`
-This function demonstrates the usage of the `revert` function.
- It takes `_numerator` and `_denominator` parameters and performs division.
- First using `assert` function we check that `_denominator` should not be zero.
- Using `revert` function, if `_numerator` is less than `_denominator`, it reverts the transaction with a custom error message stating that the numerator should be greater than the denominator.
- If the condition is met, it returns the result of the division.


## Authors

Pawash Kumar Singh
pawash97@gmail.com

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
