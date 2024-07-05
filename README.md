# Project Title

A simple smart contract for error handling and owner validation.

## Description

The ErrorHandling contract demonstrates basic error handling techniques in Solidity, including the use of 'require', 'assert', and 'revert' statements. The contract also includes owner validation to restrict certain functions to the contract deployer.

## Getting Started

### Executing program

Follow these steps to set up and deploy the contract using Remix IDE:

1. **Open Remix IDE:**
   Go to [Remix IDE](https://remix.ethereum.org).

2. **Create a New File:**
   - In the left sidebar, click on the "+" icon to create a new file.
   - Name your file ErrorHandling.sol.

3. **Paste the Solidity Code:**
   ```solidity
   // SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract ErrorHandling {
    uint public a = 0;
    uint public b = 10;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function test1() view public {
        require(owner == msg.sender, "Invalid Owner");
    }

    function test2() public {
        assert(a < b);
        a++;
    }

    function test3() view public {
        if (a + b > 0) {
            revert("a + b is Greater than 0");
           }
       }
    }


## Function Usage
### test1
The test1 function ensures that only the owner of the contract can execute it. It checks if the caller of the function is the owner and reverts with an "Invalid Owner" message if not.

### test2
The test2 function uses an assert statement to ensure that variable a is always less than variable b. It increments a by 1 each time it is called.

###test3
The test3 function checks if the sum of a and b is greater than 0 using an if statement and reverts with an "a + b is Greater than 0" message if true.

### Parameters:

-- owner: The address of the contract deployer.
-- a: A uint variable initialized to 0.
-- b: A uint variable initialized to 10.

## Help

For common issues or problems, you can refer to the Remix IDE documentation or check the console for error messages.

## Authors

Contributors names and contact info:

Rahul Prasad
(rahulprasad4653@gmail.com)
