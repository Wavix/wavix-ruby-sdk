# frozen_string_literal: true

module Wavix
  module SmsAndMms
    module SenderIDs
      module Types
        module SenderIDCreateRequestMonthlyVolume
          extend Wavix::Internal::Types::Enum

          ONE1000 = "1-1000"
          ONE_THOUSAND_ONE20000 = "1001-20000"
          UNDEFINED50000 = "20001-50000"
          UNDEFINED100000 = "50001-100000"
          MORE_THAN100000 = "More than 100000"
        end
      end
    end
  end
end
