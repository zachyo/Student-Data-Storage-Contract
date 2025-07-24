// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {StudentData} from "../src/StudentStorage.sol";

contract StudentDataScript is Script {
    StudentData public studentData;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        studentData = new StudentData("Zacheus Israel", 26);

        vm.stopBroadcast();
    }
    // https://endpoints.omniatech.io/v1/arbitrum/sepolia/public
    // https://421614.rpc.thirdweb.com/${THIRDWEB_API_KEY}
}