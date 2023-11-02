// SPDX-License-Identifier:MIT
pragma solidity ^0.8.7;

contract simplestorage {
    uint256 public favnumber;

    bool public b;

    // creating own variable type
    struct people {
        uint favoritenumber;
        string name;
    }

    mapping(string => uint) public nametofavnum; // ampping string to favnumber

    // declaring array      type[] visibility nameofarray;

    // to declare people array
    people[] public People;

    people public person = people(2, "bharat"); // if you are declaring without names then passed values should be in order of declared order   /* people public person=people({favoritenumber:2,name:"bharat"}); // same as*/

    // People.push(person); wont work as statements can only be used inside a function

    function store(uint _favnumber) public virtual {
        // virtual signifies that this function can be overridden
        favnumber = _favnumber;
        retrieve(); // before declaring this gas used was 22542 but after declaring this gas used is 24718
    }

    function retrieve() public view returns (uint) {
        return favnumber; // it doesnt cost any gas as we are not changing state;
    }

    // adding persons to People array
    function addperson(uint _fav, string memory _name) public {
        // if memory was not declared it is giving error because string is an array and we have to give data location for arrays, mappings and structs
        People.push(people(2, "b"));

        People.push(person); // statements can only be executed inside function

        People.push(people(_fav, _name));

        nametofavnum[_name] = _fav;
    }
}
