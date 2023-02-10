// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

library Settings {
  struct SettingToMakeATransfer {
    uint256 amountMin;
    uint256 amountMax;

    uint256 numLayers;
    mapping (uint256 => Layers.LayerAPI) layers;
  }

  struct SettingToAddALayer {
    uint256 amountMin;
    uint256 amountMax;

    uint256 numLayers;
    mapping (uint256 => Layers.LayerAPI) layers;
  }

  struct SettingToETCETC {
    uint256 amountMin;
    uint256 amountMax;

    uint256 numLayers;
    mapping (uint256 => Layers.LayerAPI) layers;
  }

  struct SettingToMakeAWithdrawal {
    uint256 amountMin;
    uint256 amountMax;

    uint256 numLayers;
    mapping (uint256 => Layers.LayerAPI) layers;
  }
}
