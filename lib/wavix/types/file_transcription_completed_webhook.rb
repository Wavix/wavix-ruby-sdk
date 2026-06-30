# frozen_string_literal: true

module Wavix
  module Types
    class FileTranscriptionCompletedWebhook < Internal::Types::Model
      field :request_id, -> { String }, optional: false, nullable: false

      field :status, -> { String }, optional: false, nullable: false

      field :error, -> { String }, optional: false, nullable: true
    end
  end
end
