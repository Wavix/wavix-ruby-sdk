# frozen_string_literal: true

module Wavix
  module Types
    # 10DLC Brand registration request
    class TenDlcBrandCreateRequest < Internal::Types::Model
      extend Wavix::Internal::Types::Union

      member -> { Wavix::Types::TenDlcBrandCreateRequestZero }

      member -> { Wavix::Types::TenDlcBrandCreateRequestStockExchange }
    end
  end
end
