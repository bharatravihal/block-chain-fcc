// to compile contract that imports other contract :     solcjs --bin --include-path node_modules/ --base-path . MainContract.sol

/* To use the latest stable version of the Solidity compiler via Node.js you can install it via npm:    npm install solc  */

// npm install solc === yarn add solc

// to install solc globally :  yarn global add solc@0.8.7-fixed

// $ yarn solcjs --bin --abi --include-path node_modules/ --base-path . -o . SimpleStorage.sol
/*   --bin as we want binary
--abi as we want abi "." after basepath represents the folder
-o represents output and "." represents output to above parent folder
SimpleStorage.sol represents the contract file to be deployed          */

// to view code in abi file properly
// change file to .json and format document with prettier and change file name to .abi

// use .env to hide key values
// npm i dotenv
require("dotenv").configure();
// to read any value  process.env.{valuename in env file}
