# frozen_string_literal: true

module Wavix
  module CallControl
    module Types
      # Prompt to play before collecting digits.
      #  Play a prerecorded audio file or use Wavix Text-To-Speech.
      class CallDtmfCollectRequestPrompt < Internal::Types::Model
        field :play, -> { String }, optional: true, nullable: false

        field :say, -> { Wavix::CallControl::Types::CallDtmfCollectRequestPromptSay }, optional: true, nullable: false
      end
    end
  end
end
