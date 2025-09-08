//SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

//pragma solidity 0.8.30+;

contract DataStore1 {
    uint256 public number;
    string public nama;
    function storeData(uint256 _value) public {
        number = _value;
    }
    function doSomething (string memory _name) public virtual  {
        nama = _name;
    }
}

contract DataStore2 is DataStore1 {
    function readData() public view returns (uint256) {
        return number;
    }
    function doSomething(string memory _name) public override  {
        nama = _name;
    }
}