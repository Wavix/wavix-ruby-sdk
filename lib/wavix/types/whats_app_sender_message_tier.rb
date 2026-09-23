# frozen_string_literal: true

module Wavix
  module Types
    module WhatsAppSenderMessageTier
      extend Wavix::Internal::Types::Enum

      LIMIT_NA = "limit_na"
      LIMIT250 = "limit_250"
      LIMIT2K = "limit_2k"
      LIMIT10K = "limit_10k"
      LIMIT100K = "limit_100k"
      UNLIMITED = "unlimited"
    end
  end
end
