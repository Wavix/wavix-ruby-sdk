# frozen_string_literal: true

module Wavix
  module Types
    # Value that the changed attribute of a sender had before the change. It holds only that attribute —
    # `quality_rating` for `whatsapp.sender.quality_changed`, and `status` for every other sender event.
    class WhatsAppSenderPreviousAttributes < Internal::Types::Model
      field :status, -> { Wavix::Types::WhatsAppSenderPreviousAttributesStatus }, optional: true, nullable: false

      field :quality_rating, -> { Wavix::Types::WhatsAppSenderPreviousAttributesQualityRating }, optional: true, nullable: false
    end
  end
end
