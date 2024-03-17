// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

contract MyToken {
   
  // public variables below
    string public tokenName = "META";
    string public tokenAbbry = "HTA";
    uint public totalSupply = 0;
    
 // mapping variable below
    mapping(address => uint) public balances;
     
// mint function below
    function mint (address _address, uint _value) public {
       totalSupply += _value;
       balances[_address] += _value;
    }
    
// burn function below
    function burn (address _address, uint _value) public {
       if (balances[_address] >= _value) {
          totalSupply -= _value;
          balances[_address] -= _value;
       }
    }
}
