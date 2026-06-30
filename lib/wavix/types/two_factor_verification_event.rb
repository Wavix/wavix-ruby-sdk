# frozen_string_literal: true

module Wavix
  module Types
    class TwoFactorVerificationEvent < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false

      field :event, -> { String }, optional: false, nullable: false

      field :status, -> { String }, optional: false, nullable: false

      field :charge, -> { String }, optional: false, nullable: false

      field :error, -> { String }, optional: false, nullable: true
    end
  end
end
