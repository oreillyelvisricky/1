// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "./SettingsClient.sol";
import "./LayersClient.sol";

contract Wallet is LayersClient {
  using Settings for Settings.SettingToMakeATransfer;
  using Settings for Settings.SettingToMakeAWithdrawal;

  using Layers for Layers.Layer;


  event HandleLayerStarted();
  event HandleLayerSuccess();
  event HandleLayerFailure();
  
  
  bool queueA;
  bool queueB;
  bool queueC;
  bool queueD;


  uint256 numSettingsToMakeATransfer;
  mapping (uint256 => Setting.SettingToMakeATransfer) SettingsToMakeATransfer;

  uint256 numSettingsToMakeAWithdrawal;
  mapping (uint256 => Setting.SettingToMakeAWithdrawal) SettingsToMakeAWithdrawal;

  
  function test() public {
    uint256 amountMin = 0;
    uint256 amountMax = 100;
    bool isSeqSep = false;

    Settings.SettingToMakeATransfer memory setting0 = createSettingToMakeATransfer();
    setting0.setAmount(amountMin, amountMax);
    setting0.setTokens(ENUM_ALL);
    setting0.addLayer(layer0);
    setting0.addLayer(layer1);
    setting0.addLayer(layer2);

    SettingsToMakeATransfer[0] = setting0;

    Settings.SettingToMakeATransfer memory setting1 = createSettingToMakeATransfer();
    setting1.setAmount(amountMin, amountMax);
    setting1.setTokens(ENUM_ALL);
    setting1.addLayer(layer0);
    setting1.addLayer(layer1);
    setting1.addLayer(layer2);

    SettingsToMakeATransfer[1] = setting1;
  }


  function handleLayerStarted() public {
    emit HandleLayerStarted();
  }

  function handleLayerSuccess() public {
    emit HandleLayerSuccess();
  }

  function handleLayerFailure() public {
    emit HandleLayerFailure();
  }


  function testAddLayerToMakeTransfer(
    uint256 _amountMin,
    uint256 _amountMax,
  ) private {
    addLayerToMakeTransfer(_amountMin, _amountMax);
  }


}
