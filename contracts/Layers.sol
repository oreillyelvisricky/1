// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

library Layers {
  struct LayerAPI {
    bool isSeqSep;

    address contractCallbackAddress;

    bool isStarted;
    bytes4 startedCallbackFunctionSignature;

    bool isSuccess;
    bytes4 successCallbackFunctionSignature;


    bool isFailure;
    bytes4 failureCallbackFunctionSignature;
  }

  function init(
    LayerAPI memory self,
    address _contractCallbackAddress,
    bytes4 _startedCallbackFunctionSignature,
    bytes4 _successCallbackFunctionSignature,
    bytes4 _failureCallbackFunctionSignature
  ) internal pure returns (Layers.LayerAPI memory) {
    self.contractCallbackAddress = _contractCallbackAddress;
    self.startedCallbackFunctionSignature = _startedCallbackFunctionSignature;
    self.successCallbackFunctionSignature = _successCallbackFunctionSignature;
    self.failureCallbackFunctionSignature = _failureCallbackFunctionSignature;
    return self;
  }

  function exec(LayerAPI memory self) internal pure {
    execStarted();
  }

  function execStarted(LayerAPI memory self) internal pure {
    // delegatecall??
    // how to call
  }

  function execSuccess(LayerAPI memory self) internal pure {
    //
  }

  function execFailure(LayerAPI memory self) internal pure {
    //
  }
}
