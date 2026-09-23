# frozen_string_literal: true

module Wavix
  module Types
    # Template used to send the message.
    class WhatsAppMessageTemplate < Internal::Types::Model
      field :name, -> { String }, optional: true, nullable: false

      field :language, -> { String }, optional: true, nullable: false
    end
  end
end
