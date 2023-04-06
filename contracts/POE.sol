// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/**@title POE - proof of existence smart contract
 * @author Daniel Osariemen Osazee
 * @dev This contract is a proof of existence service that verifies the existence of a document or file
 */

contract POE {
    bytes32 private docHash;

    // function to store a document hash
    function storeDoc(string memory _str) public {
        docHash = keccak256(bytes(_str));
    }

    // checks if the document exists and retuns a bool
    function verifyDoc(string memory _str) public view returns (bool) {
        return keccak256(bytes(_str)) == docHash;
    }

    // getter function

    function getDocHash () public view returns (bytes32){
        return docHash;
    }

}