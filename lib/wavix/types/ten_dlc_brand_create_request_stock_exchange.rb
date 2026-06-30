# frozen_string_literal: true

module Wavix
  module Types
    # Non-PUBLIC_PROFIT brands must not include stock_symbol or stock_exchange.
    class TenDlcBrandCreateRequestStockExchange < Internal::Types::Model
      field :entity_type, -> { Wavix::Types::TenDlcBrandCreateRequestStockExchangeEntityType }, optional: true, nullable: false

      field :stock_symbol, -> { Object }, optional: true, nullable: false

      field :stock_exchange, -> { Object }, optional: true, nullable: false
    end
  end
end
