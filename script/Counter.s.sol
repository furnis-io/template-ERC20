// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterScript is Script {
    function setUp() public {}

    function run() public {
        vm.broadcast();

        Counter counter = new Counter();
        console.log("Deployer address: %s", msg.sender);
        console.log("Deployment of Counter success: %", address(counter));
    }
}
