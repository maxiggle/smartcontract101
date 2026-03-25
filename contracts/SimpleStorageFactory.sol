//SPDX-License-Identifier: MIT

pragma solidity 0.8.31;

import{SimpleStorage} from "./SimpleStorage.sol";

contract SimpleStorageFactory  {
    SimpleStorage[] public listOfSmartContractStorage;
    function createSimpleStorageContract()public{
        SimpleStorage myStorage = new SimpleStorage();
        listOfSmartContractStorage.push(myStorage);
    }

    function simpleFactoryStore(uint256 _currentContractIndex, uint256 _storeValue)public{
        SimpleStorage mystorage = listOfSmartContractStorage[_currentContractIndex];
        mystorage.store(_storeValue);
    }

    function simpleFactoryGet(uint256 _contractIndex) view public returns (uint256){
        SimpleStorage myStorage = listOfSmartContractStorage[_contractIndex];
        return myStorage.retrieve();
    }
}


