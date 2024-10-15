// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";

contract TransferNativeScript is Script {
    function setUp() public {}

    function run() public {
        address recipient = vm.envAddress("RECIPIENT");
        uint256 amount = vm.envUint("AMOUNT");
        vm.broadcast();

        (bool success,) = recipient.call{value: amount}("");
        require(success, "ETH transfer failed");

        console.log("Recipient address: %s", recipient);
        console.log("Amount sent: %d wei", amount);
    }
}