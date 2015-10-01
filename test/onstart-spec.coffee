ReturnValue = require 'nanocyte-component-return-value'
Onstart = require '../src/onstart'

describe 'Onstart', ->
  beforeEach ->
    @sut = new Onstart

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with an envelope', ->
      it 'should return the message', ->
        expect(@sut.onEnvelope({message: 'anything'})).to.deep.equal  {timestamp: Date.now()}
