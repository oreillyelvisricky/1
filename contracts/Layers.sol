// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

library Layers {
  struct Layer {
    bool isSeqSep;

    address contractCallbackAddress;

    bool isStarted;
    bytes4 startedCallbackFunctionSignature;

    bool isSuccess;
    bytes4 successCallbackFunctionSignature;


    bool isFailure;
    bytes4 failureCallbackFunctionSignature;
  }

  function initWithoutCallbacks(
    Layer memory self
  ) internal pure returns (Layers.Layer memory) {
    return self;
  }

  function init(
    Layer memory self,
    address _contractCallbackAddress,
    bytes4 _startedCallbackFunctionSignature,
    bytes4 _successCallbackFunctionSignature,
    bytes4 _failureCallbackFunctionSignature
  ) internal pure returns (Layers.Layer memory) {
    self.contractCallbackAddress = _contractCallbackAddress;
    self.startedCallbackFunctionSignature = _startedCallbackFunctionSignature;
    self.successCallbackFunctionSignature = _successCallbackFunctionSignature;
    self.failureCallbackFunctionSignature = _failureCallbackFunctionSignature;
    return self;
  }

  function exec(Layer memory self) internal {
    execStarted(self);
  }

  function execStarted(Layer memory self) internal {
    // !!! TODO check because could be vulnerable
    self.contractCallbackAddress.delegatecall(abi.encode(self.startedCallbackFunctionSignature));
  }

  function execSuccess(Layer memory self) internal pure {
    //
  }

  function execFailure(Layer memory self) internal pure {
    //
  }
}
