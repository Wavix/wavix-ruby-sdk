# frozen_string_literal: true

module Wavix
  module CallControl
    module Types
      class CallDtmfCollectRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :max_digits, -> { Integer }, optional: true, nullable: false

        field :timeout, -> { Integer }, optional: true, nullable: false

        field :termination_character, -> { String }, optional: true, nullable: false

        field :max_attempts, -> { Integer }, optional: true, nullable: false

        field :prompt, -> { Wavix::CallControl::Types::CallDtmfCollectRequestPrompt }, optional: true, nullable: false
      end
    end
  end
end
