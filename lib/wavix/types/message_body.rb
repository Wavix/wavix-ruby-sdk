# frozen_string_literal: true

module Wavix
  module Types
    class MessageBody < Internal::Types::Model
      field :text, -> { String }, optional: false, nullable: false

      field :media, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
