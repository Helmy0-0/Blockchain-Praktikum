//SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

//pragma solidity 0.8.30+;
//pragma solidity >=0.8.0 < 0.9.0;
contract SimpleStorage {
    // uint256 integer = 10;
    // bool boolean = true;
    // string mystring = "Hello World";
    // address myaddress = 0x0000000000000000000000000000000000000001;
    // bytes mybytes = "hello, world";
    uint256 favoriteNumber;
    
    struct People {
        uint256 favoriteNumber;
        string name;
    }
    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;
    
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }
    function addPerson(uint256 _favoriteNumber, string memory _name) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
    // People public person = People({favoriteNumber: 7, name: "jokowi" });
}

