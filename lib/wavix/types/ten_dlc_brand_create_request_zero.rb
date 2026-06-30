# frozen_string_literal: true

module Wavix
  module Types
    # PUBLIC_PROFIT brands must provide stock_symbol and stock_exchange.
    class TenDlcBrandCreateRequestZero < Internal::Types::Model
      field :entity_type, -> { Wavix::Types::TenDlcBrandCreateRequestZeroEntityType }, optional: true, nullable: false
    end
  end
end
