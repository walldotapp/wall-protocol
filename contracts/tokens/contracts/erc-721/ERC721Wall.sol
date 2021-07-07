// SPDX-License-Identifier: MIT

pragma solidity >=0.6.2 <0.8.0;
pragma abicoder v2;

import "./ERC721Base.sol";

contract ERC721Wall is ERC721Base {

    event CreateERC721(address owner, string name, string symbol);

    function __ERC721_init(string memory _name, string memory _symbol, string memory baseURI, string memory contractURI) external initializer {
        _setBaseURI(baseURI);
        __ERC721Lazy_init_unchained();
        __RoyaltiesVersion2Upgrade_init_unchained();
        __Context_init_unchained();
        __ERC165_init_unchained();
        __Ownable_init_unchained();
        __ERC721Burnable_init_unchained();
        __Mint721Validator_init_unchained();
        __HasContractURI_init_unchained(contractURI);
        __ERC721_init_unchained(_name, _symbol);
        emit CreateERC721(_msgSender(), _name, _symbol);
    }
    uint256[50] private __gap;
}
