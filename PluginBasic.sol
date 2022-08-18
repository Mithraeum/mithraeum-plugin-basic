// SPDX-License-Identifier: MIT
pragma solidity >=0.7.6;

abstract contract PluginBasic {
    
    string content;

    event NewContent(string newContent);

    /**
     * @dev
	 * function must return ipfs hash. Example: QmNxdLEHJyYmaPPkMur3ua87zSVF8Wi2PWn8wBNd6A9QH1
	 */
    function getContent() virtual external view returns(string memory) {
        return content;
    }

    function _setContent(string memory _content) internal {
    	require(bytes(content).length == 0, "already set");
        content = _content;
        emit NewContent(_content);
    }
}
