# frozen_string_literal: true

module Wavix
  module Cdrs
    module Types
      class CdrRetranscriptionRequest < Internal::Types::Model
        field :call_id, -> { String }, optional: false, nullable: false

        field :language, -> { Wavix::Types::TranscriptionLanguage }, optional: true, nullable: false

        field :webhook_url, -> { String }, optional: true, nullable: false
      end
    end
  end
end
