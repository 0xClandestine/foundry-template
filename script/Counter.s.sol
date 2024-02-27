// SPDX-License-Identifier: The Unlicense
pragma solidity ^0.8.0;

import { Script } from "forge-std/Script.sol";
import { Counter } from "../src/Counter.sol";

contract DeployCounter is Script {
    function run() public virtual returns (Counter c) {
        string[] memory ffi = new string[](2);
        ffi[0] = "bash";
        ffi[1] = "create2.sh";
        vm.ffi(ffi);

        vm.broadcast();
        c = new Counter{ salt: vm.parseBytes32(vm.readLine(".temp")) }();
        vm.removeFile(".temp");
    }
}
