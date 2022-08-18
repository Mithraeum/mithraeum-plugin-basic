// SPDX-License-Identifier: MIT
pragma solidity >=0.7.6;

import "./PluginBasic.sol";

contract Plugin is PluginBasic {
    // Your code should be here
    
    // Example setter implementation
    function setContent(string memory _content) public {
        _setContent(_content);
    }
}
