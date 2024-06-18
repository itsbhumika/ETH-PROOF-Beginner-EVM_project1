Project Title: 
The "TokenHolder" smart contract is designed to manage a simple ERC-20-like token on the Ethereum blockchain. This contract allows for the creation, burning, and management of tokens, including setting and updating token details.

Description: 
This Solidity contract, `TokenHolder`, allows the management of a custom token on the Ethereum blockchain. It defines a `Token` struct with `name`, `abbr` (abbreviation), and `tSupply` (total supply). The contract maintains user balances via a mapping and provides several functions for token management:
1. `setDetails`: Sets the token's name and abbreviation.
2. `mint`: Increases the balance of a specified address by a given amount and updates the total token supply.
3. `burn`: Decreases the balance of a specified address by a given amount if sufficient balance exists, reducing the total token supply accordingly.
4. `getDetails`: Retrieves the token's name, abbreviation, and total supply.
5. `updateInfo`: Updates the token's name or abbreviation based on the provided key.
These functions enable basic token issuance, burning, and management of token details.

Getting Started: 
The `TokenHolder` smart contract manages a simple token system on the Ethereum blockchain. It defines a `Token` structure with a name, abbreviation, and total supply. The contract stores token balances for addresses using a mapping.
1. Setting Token Details: `setDetails` function sets the token's name and abbreviation.
2. Minting Tokens: `mint` function increases the balance of a specified address and the total token supply.
3. Burning Tokens: `burn` function decreases the balance of a specified address and the total token supply if the address has enough tokens, returning a success message or an error 
    message if the balance is insufficient.
4. Getting Token Details: `getDetails` function returns the token's name, abbreviation, and total supply.
5. Updating Token Info: `updateInfo` function allows updating the token's name or abbreviation based on a provided key (`name` or `abbr`), returning a success or error message based on 
    the validity of the key.

Help:
The comments added to the code will help you to better understand the code and the assignment2.sol is the main code file.
