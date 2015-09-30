ReturnValue = require 'nanocyte-component-return-value'
Null = require '../src/null'

describe 'Null', ->
  beforeEach ->
    @sut = new Null

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with a value that is not null and not set as true', ->
      it 'should return the message', ->
        expect(@sut.onEnvelope({ config: {value: 1, not: true }, message: 'blah' })).to.deep.equal 'blah'

    describe 'when called with a value that is not null and not set as false', ->
      it 'should return null', ->
        expect(@sut.onEnvelope({ config: {value: 1, not: false }, message: 'pork' })).to.not.equal 'pork'

    describe 'when called with a value that is null and not set as true', ->
      it 'should return null', ->
        expect(@sut.onEnvelope({ config: { value: null, not: true }, message: 'bacon' })).to.not.equal 'bacon'

    describe 'when called with a null value that is null and not set as false', ->
      it 'should return the message', ->
        expect(@sut.onEnvelope({ config: {value: null, not: false}, message: 'rickAstleyCase' })).to.equal 'rickAstleyCase'
