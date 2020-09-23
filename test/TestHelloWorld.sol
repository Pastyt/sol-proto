pragma solidity >=0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Prototype.sol";

contract Test {
    function test()  public {
        Prototype P = Prototype(DeployedAddresses.Prototype());
        P.write(sha256("D"));
        P.check(sha256("D"));
    }
} 