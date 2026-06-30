# frozen_string_literal: true

module Wavix
  module Types
    class CdrTranscriptionCompletedWebhook < Internal::Types::Model
      field :uuid, -> { String }, optional: false, nullable: false

      field :status, -> { Wavix::Types::CdrTranscriptionCompletedWebhookStatus }, optional: false, nullable: false
    end
  end
end
