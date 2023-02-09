// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "./LayersClient.sol";

contract Wallet is LayersClient {
  using Layers for Layers.LayerAPI;


  struct Layer {
    uint numLayerFlowLayers;
    mapping (uint => Layers.LayerAPI) layerFlow;
  }


  function test() public {
    Layers.LayersAPI memory layerAPI = createLayer(
      address(this),
      this.handleLayerStarted.selector,
      this.handleLayerSuccess.selector,
      this.handleLayerFailure.selector
    );
  }


  function handleLayerStarted() {
    //
  }

  function handleLayerSuccess() {
    //
  }

  function handleLayerFailure() {
    //
  }
}
