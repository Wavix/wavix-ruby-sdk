# frozen_string_literal: true

module Wavix
  module Types
    # TCR returns the feedback per submitted appeal category
    class TcrFeedbackCategory < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :display_name, -> { String }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: false

      field :fields, -> { String }, optional: false, nullable: true

      field :errors, -> { Internal::Types::Array[Wavix::Types::TcrErrorMessage] }, optional: false, nullable: true
    end
  end
end
