# frozen_string_literal: true

module Wavix
  module Types
    # Header content, required only when the template's `HEADER` component needs one.
    class WhatsAppMessageSendRequestTemplateHeader < Internal::Types::Model
      field :type, -> { Wavix::Types::WhatsAppMessageSendRequestTemplateHeaderType }, optional: true, nullable: false

      field :placeholder, -> { String }, optional: true, nullable: false

      field :media_url, -> { String }, optional: true, nullable: false, api_name: "mediaUrl"

      field :filename, -> { String }, optional: true, nullable: false

      field :latitude, -> { Integer }, optional: true, nullable: false

      field :longitude, -> { Integer }, optional: true, nullable: false

      field :parameter_name, -> { String }, optional: true, nullable: false, api_name: "parameterName"

      field :text, -> { String }, optional: true, nullable: false
    end
  end
end
