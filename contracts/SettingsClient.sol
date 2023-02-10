// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "./Settings.sol";

abstract contract SettingsClient {
  using Settings for Settings.SettingToMakeATransfer;
  using Settings for Settings.SettingToMakeAWithdrawal;


  function createSettingToMakeATransfer() internal pure returns (Settings.SettingToMakeATransfer memory) {
    Settings.SettingToMakeATransfer memory settingToMakeATransfer;

    return settingToMakeATransfer;
  }

  // do we have amounts on every?
  // how bout wiğthdraw, etdc???
  function setAmount(
    uint256 _amountMin,
    uint256 _amountMax
  ) internal pure returns {
    //
  }

  function setTokens(
    // ENUM ALL

    // ENUM TOKEN?
    // STR TOKEN?
  ) internal pure returns {
    //
  }
  
  function addLayer(Layer.Layer memory layer) internal pure returns {
    //
  }
}
