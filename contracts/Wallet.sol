// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "./LayersClient.sol";

contract Wallet is LayersClient {
  using Layers for Layers.LayerAPI;
  
  
  event HandleLayerStarted();


  struct Layer {
    uint numLayerFlowLayers;
    mapping (uint => Layers.LayerAPI) layerFlow;
  }


  function test() public {
    Layers.LayerAPI memory layerAPI = createLayer(
      address(this),
      this.handleLayerStarted.selector,
      this.handleLayerSuccess.selector,
      this.handleLayerFailure.selector
    );

    layerAPI.exec();
  }


  function handleLayerStarted() public {
    emit HandleLayerStarted();
  }

  function handleLayerSuccess() public {
    //
  }

  function handleLayerFailure() public {
    //
  }
}
