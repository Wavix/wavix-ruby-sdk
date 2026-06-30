# frozen_string_literal: true

module Wavix
  module TwoFa
    module Verification
      module Types
        class TwoFactorVerificationCreateRequest < Internal::Types::Model
          field :service_id, -> { String }, optional: false, nullable: false

          field :to, -> { String }, optional: false, nullable: false

          field :channel, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
