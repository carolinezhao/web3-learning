// Specifies the version of Solidity that the code is written with.
// The compiler will customize the way it behaves based on that version.
pragma solidity ^0.4.17; // 分号必须有，否则出现语法错误。

// Defines a new contract that has some methods and variables
// contract is a keyword, which is almost identical to class in JS.
contract Inbox {
    // Declares all of the instance variables (and their types) that will exist in this contract
    // storage variable
    string public message;
    // 与 contract 同名 (大写)，为 constructor，自动执行。
    function Inbox(string initialMessage) public {
        message = initialMessage;
    }
    
    function setMessage(string newMessage) public {
        // modify the value of the data within the contract
        // cannot return values
        message = newMessage;
    }
    // to see common function types
    //--------name-------|---type----|--return type--|
    function getMessage() public view returns (string) {
        // view: the function returns data and does not modify the contract's data
        return message;
    }
}