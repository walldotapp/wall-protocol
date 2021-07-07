// SPDX-License-Identifier: MIT

pragma solidity >=0.6.2 <0.8.0;
pragma abicoder v2;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721BurnableUpgradeable.sol";
import "./ERC721Lazy.sol";
import "../HasContractURI.sol";

contract ERC721User is OwnableUpgradeable, ERC721BurnableUpgradeable, ERC721Lazy, HasContractURI {

    event CreateERC721User(address owner, string name, string symbol);

    function __ERC721WallUser_init(string memory _name, string memory _symbol, string memory baseURI, string memory contractURI, address[] memory operators) external initializer {
        _setBaseURI(baseURI);
        __ERC721Lazy_init_unchained();
        __Context_init_unchained();
        __ERC165_init_unchained();
        __Ownable_init_unchained();
        __ERC721Burnable_init_unchained();
        __Mint721Validator_init_unchained();
        __HasContractURI_init_unchained(contractURI);
        __RoyaltiesVersion2Upgrade_init_unchained();
        __ERC721_init_unchained(_name, _symbol);
        for(uint i = 0; i < operators.length; i++) {
            setApprovalForAll(operators[i], true);
        }
        emit CreateERC721User(_msgSender(), _name, _symbol);
    }

    function mintAndTransferTo(LibERC721LazyMint.Mint721Data memory data, address to) public override virtual {
        require(owner() == data.creators[0].account, "minter is not the owner");
        super.mintAndTransferTo(data, to);
    }
    uint256[50] private __gap;
}
