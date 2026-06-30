# frozen_string_literal: true

module Wavix
  module CallControl
    module Types
      class CallRequest < Internal::Types::Model
        field :from, -> { String }, optional: false, nullable: false

        field :to, -> { String }, optional: false, nullable: false

        field :callback_url, -> { String }, optional: false, nullable: false

        field :recording, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :voicemail_detection, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :tag, -> { String }, optional: true, nullable: false

        field :timeout, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
