// SPDX-License-Identifier: MIT

pragma solidity >=0.6.2 <0.8.0;
pragma abicoder v2;

import "./RoyalitiesAbstract.sol";
import "../RoyaltiesVersion2.sol";

contract RoyaltiesVersion2Impl is RoyalitiesAbstract, RoyaltiesVersion2 {
    function getRoyalties(uint256 id) override external view returns (LibPart.Part[] memory) {
        return royalties[id];
    }

    function _onRoyaltiesSet(uint256 _id, LibPart.Part[] memory _royalties) override internal {
        emit RoyaltiesSet(_id, _royalties);
    }
}
