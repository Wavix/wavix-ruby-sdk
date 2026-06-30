# frozen_string_literal: true

module Wavix
  module Types
    class RecordingDeletedErrorResponse < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :error, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :deleted_at, -> { String }, optional: true, nullable: false
    end
  end
end
