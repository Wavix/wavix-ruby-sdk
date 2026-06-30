# frozen_string_literal: true

module Wavix
  module TwoFa
    module Verification
      module Types
        module TwoFactorVerificationResendRequestChannel
          extend Wavix::Internal::Types::Enum

          SMS = "sms"
          VOICE = "voice"
        end
      end
    end
  end
end
