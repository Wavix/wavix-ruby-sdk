# frozen_string_literal: true

module Wavix
  module CallControl
    module Types
      # Text to speak and voice to use. Pick `voice` from the language family matching `language` (for example, a German
      # voice such as `Hans` for `ge`, a Spanish voice such as `Conchita` for `sp`) — Wavix does not validate the
      # pairing itself.
      class CallDtmfCollectRequestPromptSay < Internal::Types::Model
        field :text, -> { String }, optional: false, nullable: false

        field :language, -> { Wavix::Types::TtsLanguage }, optional: true, nullable: false

        field :voice, -> { Wavix::Types::TtsVoiceID }, optional: false, nullable: false
      end
    end
  end
end
