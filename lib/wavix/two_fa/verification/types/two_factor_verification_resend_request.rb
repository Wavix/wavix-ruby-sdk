# frozen_string_literal: true

module Wavix
  module TwoFa
    module Verification
      module Types
        class TwoFactorVerificationResendRequest < Internal::Types::Model
          field :session_id, -> { String }, optional: false, nullable: false

          field :channel, -> { Wavix::TwoFa::Verification::Types::TwoFactorVerificationResendRequestChannel }, optional: false, nullable: false
        end
      end
    end
  end
end
