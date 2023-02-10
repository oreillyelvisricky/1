// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

abstract contract SettingsClient {
  using Settings for Settings.MakeTransferSetting;


  function createSettingToMakeATransfer() internal pure returns (Settings.SettingToMakeATransfer memory) {
    Settings.SettingToMakeATransfer memory settingToMakeATransfer;

    return settingToMakeATransfer;
  }
}
