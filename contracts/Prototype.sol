pragma solidity >=0.5.0;



contract Prototype {

    event test(bytes32 current);

    bytes32 private MyHash;

    constructor () public {
        MyHash=sha256("Hello World");
    }

    function write (bytes32 New) public {
        MyHash=New;
        emit test(MyHash);
    }

    function read () public view returns (bytes32) {
        return MyHash;
    }


    function check(bytes32 NewHash) public view returns (bool){
        require(NewHash==MyHash);
    }
}