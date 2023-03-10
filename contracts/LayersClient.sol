// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "./Layers.sol";

abstract contract LayersClient {
  using Layers for Layers.LayerAPI;


  function createLayerWithoutCallbacks() internal pure returns (Layers.Layer memory) {
    Layers.Layer memory layerAPI;

    return layer.init(
    );
  }

  function createLayer(
    address _contractCallbackAddress,
    bytes4 _startedCallbackFunctionSignature,
    bytes4 _successCallbackFunctionSignature,
    bytes4 _failureCallbackFunctionSignature
  ) internal pure returns (Layers.LayerAPI memory) {
    Layers.Layer memory layer;

    return layer.init(
      _contractCallbackAddress,
      _startedCallbackFunctionSignature,
      _successCallbackFunctionSignature,
      _failureCallbackFunctionSignature
    );
  }
}
