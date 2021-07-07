// SPDX-License-Identifier: MIT

pragma solidity >=0.6.2 <0.8.0;
pragma abicoder v2;

import "@openzeppelin/contracts-upgradeable/introspection/ERC165Upgradeable.sol";
import "../../royalties/contracts/LibRoyaltiesVersion2.sol";
import "../../royalties/contracts/RoyaltiesVersion2.sol";

abstract contract RoyaltiesVersion2Upgrade is ERC165Upgradeable, RoyaltiesVersion2 {
    function __RoyaltiesVersion2Upgrade_init_unchained() internal initializer {
        _registerInterface(LibRoyaltiesV2._INTERFACE_ID_ROYALTIES);
    }
}
