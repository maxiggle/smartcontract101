//SPDX-License-Identifier: MIT

pragma solidity 0.8.31;

import{SimpleStorage} from "./SimpleStorage.sol";
contract AddFiveStorage is  SimpleStorage{
    function store(uint256 myNewValue)public override  {
        myFavoriteNumber = myNewValue +5;
    }
}