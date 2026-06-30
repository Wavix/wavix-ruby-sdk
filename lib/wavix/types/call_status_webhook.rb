# frozen_string_literal: true

module Wavix
  module Types
    # Post-call webhook payload
    class CallStatusWebhook < Internal::Types::Model
      field :direction, -> { Wavix::Types::CallStatusWebhookDirection }, optional: false, nullable: false

      field :uuid, -> { String }, optional: false, nullable: false

      field :destination, -> { String }, optional: false, nullable: true

      field :duration, -> { Integer }, optional: false, nullable: false

      field :charge, -> { String }, optional: false, nullable: false

      field :date, -> { String }, optional: false, nullable: false

      field :disposition, -> { Wavix::Types::CallDisposition }, optional: false, nullable: false

      field :from, -> { String }, optional: false, nullable: true

      field :to, -> { String }, optional: false, nullable: true

      field :per_minute, -> { String }, optional: false, nullable: false
    end
  end
end
