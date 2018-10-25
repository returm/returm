pragma solidity ^0.4.21;

import "zeppelin-solidity/contracts/token/ERC827/ERC827Token.sol";

contract ReturMTokenPublic is ERC827Token {
    uint public INITIAL_SUPPLY = 1000000000000000000;
    string public name = "ReturM";
    string public symbol = "RM";
    uint8 public decimals = 8;
    address owner;
    bool public released = false;

    constructor() public {
        totalSupply_ = INITIAL_SUPPLY * 10 ** uint(decimals);
        // totalSupply_ = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
        owner = msg.sender;
    }
}