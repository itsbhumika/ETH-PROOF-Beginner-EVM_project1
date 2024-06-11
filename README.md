# ETH-PROOF-Beginner-EVM_project1
We will learn how to create our very own token.
Here I am going to give a small elaboration, on what my program is going to do.

1. ) I created a structure datatype as "Token" which will provide the body to store the "name", "Abbreviation" and "Balance" of the Tokens
2. ) Secondly, I created a mapping from the address to the account balance as "Balance"
3. ) I made a "setDetails" function to appoint the name and abbr to the token that we made as "token"
4. ) Next I made the "mint" function as required by the project, which will either put or add the balance to the token for the particular address
5. ) Further, I created the "burn" function to destroy or deduct the balance from the token after verifying whether the token has an ample amount to balance for
     deduction, if not, then it simply reverts back to the preceeding value.
6. ) Then I made two more add-on functions "getDetails" and "updateInfo"
      a.) "getDetails" function simply prints all the details of the token
      b.) while "updateInfo" function , updates the value for "name" and "abbr" for the token
