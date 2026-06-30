# frozen_string_literal: true

module Wavix
  module CallControl
    module Types
      # Text to speak and voice to use.
      class CallDtmfCollectRequestPromptSay < Internal::Types::Model
        field :text, -> { String }, optional: false, nullable: false

        field :language, -> { Wavix::Types::TtsLanguage }, optional: true, nullable: false

        field :voice, -> { Wavix::Types::TtsVoiceID }, optional: false, nullable: false
      end
    end
  end
end
