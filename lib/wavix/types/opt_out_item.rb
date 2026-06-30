# frozen_string_literal: true

module Wavix
  module Types
    class OptOutItem < Internal::Types::Model
      field :phone_number, -> { String }, optional: true, nullable: false

      field :sender_id, -> { String }, optional: true, nullable: false

      field :campaign_id, -> { String }, optional: true, nullable: false

      field :created_at, -> { String }, optional: true, nullable: false
    end
  end
end
