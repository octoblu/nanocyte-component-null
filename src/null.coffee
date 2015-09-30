_           = require 'lodash'
ReturnValue = require 'nanocyte-component-return-value'

class Null extends ReturnValue
  onEnvelope: (envelope) =>
    { message, config } = envelope
    { value }      = config
    return message if _.isNull(value) ^ config.not

module.exports = Null
