//SPDX-License-Identifier: MIT
pragma solidity ^0.5.16;

contract LegacyWireTestParent {
    event Overridden(uint256);
}

contract LegacyWireTestAbstract {
    event AbstractEvent();

    event AbstractOverridden(uint256 indexed);

    function interfaceAndOverrideTest() public; //just here to make the contract abstract
}

contract LegacyWireTest is LegacyWireTestParent, LegacyWireTestAbstract {
    event Overridden(uint256 indexed);
    event AbstractOverridden(uint256);

    function interfaceAndOverrideTest() public {
        emit AbstractEvent();
        emit AbstractOverridden(107);
        emit LegacyWireTestAbstract.AbstractOverridden(683);
        emit Overridden(107);
        emit LegacyWireTestParent.Overridden(683);
    }
}
