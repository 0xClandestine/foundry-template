// SPDX-License-Identifier: The Unlicense
pragma solidity ^0.8.0;

import { Test } from "forge-std/Test.sol";
import { DeployCounter, Counter } from "../script/Counter.s.sol";

contract CounterTest is Test {
    event NumberSet(uint256 indexed newNumber);

    Counter public counter;

    function setUp() public virtual {
        counter = new DeployCounter().run();
        vm.label(address(counter), "Counter");
    }
}

contract SetNumberTest is CounterTest {
    function testFuzz_SetNumber(uint256 x) public virtual {
        vm.expectEmit(true, true, false, false);
        emit NumberSet(x);
        counter.setNumber(x);
        assertEq(counter.number(), x);
    }
}

contract IncrementTest is CounterTest {
    function test_Increment() public virtual {
        vm.expectEmit(true, true, false, false);
        emit NumberSet(1);
        counter.increment();
        assertEq(counter.number(), 1);
    }

    function test_IncrementOverflow() public virtual {
        counter.setNumber(type(uint256).max);
        vm.expectRevert(Counter.IncrementOverflow.selector);
        counter.increment();
    }
}
