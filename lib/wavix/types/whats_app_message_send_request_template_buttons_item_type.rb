# frozen_string_literal: true

module Wavix
  module Types
    module WhatsAppMessageSendRequestTemplateButtonsItemType
      extend Wavix::Internal::Types::Enum

      QUICK_REPLY = "QUICK_REPLY"
      URL = "URL"
      COPY_CODE = "COPY_CODE"
      FLOW = "FLOW"
      CATALOG = "CATALOG"
      MULTI_PRODUCT = "MULTI_PRODUCT"
      ORDER_DETAILS = "ORDER_DETAILS"
      VOICE_CALL = "VOICE_CALL"
    end
  end
end
