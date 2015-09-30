ReturnValue = require 'nanocyte-component-return-value'

class Null extends ReturnValue
  onEnvelope: (envelope) =>
    return envelope.message

module.exports = Null
