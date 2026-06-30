# frozen_string_literal: true

module Wavix
  module SmsAndMms
    module SenderIDs
      module Types
        module SenderIDCreateRequestUsecase
          extend Wavix::Internal::Types::Enum

          TRANSACTIONAL = "transactional"
          PROMO = "promo"
          AUTHENTICATION = "authentication"
        end
      end
    end
  end
end
