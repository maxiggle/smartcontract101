// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

contract SimpleStorage { 
    uint256  myFavoriteNumber;


    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople; 

    mapping(string=>uint256) public nameToFavoriteNumber;
    
     function  store(uint256 _favoriteNumber) public virtual  {
        myFavoriteNumber = _favoriteNumber;
    }

    function addPerson(uint256 _favoriteNumber, string memory name) public  {
         listOfPeople.push(Person(_favoriteNumber, name));
         nameToFavoriteNumber[name] = _favoriteNumber;
    }

    function retrieve( ) public view returns (uint256){
        return myFavoriteNumber;
    }
}