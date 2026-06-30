# frozen_string_literal: true

module Wavix
  module SmsAndMms
    module Messages
      module Types
        class ListMessagesRequest < Internal::Types::Model
          field :sent_after, -> { String }, optional: true, nullable: false

          field :sent_before, -> { String }, optional: true, nullable: false

          field :type, -> { String }, optional: false, nullable: false

          field :from, -> { String }, optional: true, nullable: false

          field :to, -> { String }, optional: true, nullable: false

          field :status, -> { Wavix::Types::MessageDeliveryStatus }, optional: true, nullable: false

          field :tag, -> { String }, optional: true, nullable: false

          field :message_type, -> { Wavix::SmsAndMms::Messages::Types::ListMessagesRequestMessageType }, optional: true, nullable: false

          field :page, -> { Integer }, optional: true, nullable: false

          field :per_page, -> { Integer }, optional: true, nullable: false
        end
      end
    end
  end
end
