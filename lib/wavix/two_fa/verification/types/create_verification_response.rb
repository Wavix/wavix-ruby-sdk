# frozen_string_literal: true

module Wavix
  module TwoFa
    module Verification
      module Types
        class CreateVerificationResponse < Internal::Types::Model
          field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :service_id, -> { String }, optional: false, nullable: false

          field :session_url, -> { String }, optional: false, nullable: false

          field :session_id, -> { String }, optional: false, nullable: false

          field :destination, -> { String }, optional: false, nullable: false

          field :created_at, -> { String }, optional: false, nullable: false

          field :number_lookup, -> { Wavix::Types::PhoneLookupDetails }, optional: false, nullable: false
        end
      end
    end
  end
end
