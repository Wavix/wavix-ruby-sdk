# frozen_string_literal: true

module Wavix
  module Types
    class WhatsAppMessageSendRequestTemplateButtonsItem < Internal::Types::Model
      field :type, -> { Wavix::Types::WhatsAppMessageSendRequestTemplateButtonsItemType }, optional: false, nullable: false
    end
  end
end
