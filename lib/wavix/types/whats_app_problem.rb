# frozen_string_literal: true

module Wavix
  module Types
    # RFC 9457 problem document returned by WhatsApp endpoints as `application/problem+json`.
    class WhatsAppProblem < Internal::Types::Model
      field :type, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false

      field :status, -> { Integer }, optional: false, nullable: false

      field :detail, -> { String }, optional: false, nullable: false

      field :instance, -> { String }, optional: false, nullable: false

      field :error_class, -> { Wavix::Types::WhatsAppProblemErrorClass }, optional: true, nullable: false

      field :error_code, -> { String }, optional: true, nullable: false
    end
  end
end
