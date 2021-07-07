// SPDX-License-Identifier: MIT

pragma solidity >=0.6.2 <0.8.0;

import "@openzeppelin/contracts-upgradeable/introspection/ERC165Upgradeable.sol";
import "../../royalties/contracts/LibRoyaltiesVersion1.sol";
import "../../royalties/contracts/RoyaltiesVersion1.sol";

abstract contract RoyaltiesVersion1Upgrade is ERC165Upgradeable, RoyaltiesVersion1 {
    function __RoyaltiesVersion1Upgrade_init_unchained() internal initializer {
        _registerInterface(LibRoyaltiesV1._INTERFACE_ID_FEES);
    }
}
