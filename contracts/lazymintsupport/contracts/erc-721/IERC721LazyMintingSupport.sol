// SPDX-License-Identifier: MIT

pragma solidity >=0.6.2 <0.8.0;
pragma abicoder v2;

import "@openzeppelin/contracts-upgradeable/token/ERC721/IERC721Upgradeable.sol";
import "./LibERC721LazyMintingSupport.sol";
import "../../../royalties/contracts/LibPart.sol";

interface IERC721LazyMint is IERC721Upgradeable {

    event Creators(
        uint256 tokenId,
        LibPart.Part[] creators
    );

    function mintAndTransferTo(
        LibERC721LazyMint.Mint721Data memory data,
        address to
    ) external;

    function transferFromOrMintTo(
        LibERC721LazyMint.Mint721Data memory data,
        address from,
        address to
    ) external;
}