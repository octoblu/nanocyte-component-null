ReturnValue = require 'nanocyte-component-return-value'
Null = require '../src/null'

describe 'Null', ->
  beforeEach ->
    @sut = new Null

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with an envelope', ->
      it 'should return the message', ->
        expect(@sut.onEnvelope({message: 'anything'})).to.deep.equal 'anything'
