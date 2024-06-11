// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract TokenHolder {

    struct Token {
        string name;
        string abbr;
        uint tSupply;
    }

    mapping(address => uint) public balance;
    Token token;

    // Function to set the name and abbreviation of the token
    function setDetails(string memory _name, string memory _abbr) public {
        token.name = _name;
        token.abbr = _abbr;
    }

    // Function to mint new tokens
    function mint(address _addr, uint amount) public {
        balance[_addr] += amount;
        token.tSupply += amount;
    }

    // Function to burn tokens
    function burn(address _addr, uint amount) public returns (string memory) {
        if (balance[_addr] >= amount) {
            balance[_addr] -= amount;
            token.tSupply -= amount;
            return "Update Successful";
        } else {
            return "Not Enough Balance";
        }
    }

    // Function to get the token details
    function getDetails() public view returns (string memory, string memory, uint) {
        return (token.name, token.abbr, token.tSupply);
    }

    // Function to update the token name or abbreviation
    function updateInfo(string memory key, string memory newValue) public returns (string memory) {
        bytes32 keyHash = keccak256(abi.encodePacked(key));
        if (keyHash == keccak256(abi.encodePacked("name"))) {
            token.name = newValue;
            return "Update Successful";
        } else if (keyHash == keccak256(abi.encodePacked("abbr"))) {
            token.abbr = newValue;
            return "Update Successful";
        } else {
            return "Invalid Request!";
        }
    }
}
