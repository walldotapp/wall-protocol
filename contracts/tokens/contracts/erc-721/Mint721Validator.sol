// SPDX-License-Identifier: MIT

pragma solidity >=0.6.2 <0.8.0;

import "../erc-1271/ERC1271Validator.sol";
import "../../../lazymintsupport/contracts/erc-721/LibERC721LazyMintingSupport.sol";

contract Mint721Validator is ERC1271Validator {
    function __Mint721Validator_init_unchained() internal initializer {
        __EIP712_init("Mint721", "1");
    }

    function validate(address account, bytes32 hash, bytes memory signature) internal view {
        validate1271(account, hash, signature);
    }
    uint256[50] private __gap;
}
