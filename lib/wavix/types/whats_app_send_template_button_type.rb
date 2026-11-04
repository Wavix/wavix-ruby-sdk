# frozen_string_literal: true

module Wavix
  module Types
    module WhatsAppSendTemplateButtonType
      extend Wavix::Internal::Types::Enum

      QUICK_REPLY = "quick_reply"
      URL = "url"
      COPY_CODE = "copy_code"
      FLOW = "flow"
      CATALOG = "catalog"
      MULTI_PRODUCT = "multi_product"
      ORDER_DETAILS = "order_details"
      VOICE_CALL = "voice_call"
    end
  end
end
