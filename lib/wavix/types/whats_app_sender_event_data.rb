# frozen_string_literal: true

module Wavix
  module Types
    # Data of a sender event. It carries the sender's status and quality rating after the change, and the previous value
    # of the attribute that changed.
    class WhatsAppSenderEventData < Internal::Types::Model
      field :phone_number, -> { String }, optional: false, nullable: false

      field :status, -> { Wavix::Types::WhatsAppSenderEventDataStatus }, optional: false, nullable: false

      field :quality_rating, -> { Wavix::Types::WhatsAppSenderEventDataQualityRating }, optional: false, nullable: true

      field :previous_attributes, -> { Wavix::Types::WhatsAppSenderPreviousAttributes }, optional: false, nullable: false
    end
  end
end
