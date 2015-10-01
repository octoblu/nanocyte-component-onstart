ReturnValue = require 'nanocyte-component-return-value'

class Onstart extends ReturnValue
  onEnvelope: (envelope) =>
    message =
      timestamp: Date.now()
    return message

module.exports = Onstart
