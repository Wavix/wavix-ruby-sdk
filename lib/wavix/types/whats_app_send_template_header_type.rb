# frozen_string_literal: true

module Wavix
  module Types
    module WhatsAppSendTemplateHeaderType
      extend Wavix::Internal::Types::Enum

      TEXT = "text"
      TEXT_NAMED_PARAMETERS = "text_named_parameters"
      IMAGE = "image"
      VIDEO = "video"
      DOCUMENT = "document"
      LOCATION = "location"
    end
  end
end
