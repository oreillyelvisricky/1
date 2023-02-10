// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "./Layers.sol";

abstract contract LayersClient {
  using Layers for Layers.LayerAPI;

  function createLayer(
    address _contractCallbackAddress,
    bytes4 _startedCallbackFunctionSignature,
    bytes4 _successCallbackFunctionSignature,
    bytes4 _failureCallbackFunctionSignature
  ) internal pure returns (Layers.LayerAPI memory) {
    Layers.LayerAPI memory layerAPI;

    return layerAPI.init(
      _contractCallbackAddress,
      _startedCallbackFunctionSignature,
      _successCallbackFunctionSignature,
      _failureCallbackFunctionSignature
    );
  }
}
