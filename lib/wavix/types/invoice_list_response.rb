# frozen_string_literal: true

module Wavix
  module Types
    class InvoiceListResponse < Internal::Types::Model
      field :is_empty, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :invoices, -> { Internal::Types::Array[Wavix::Types::Invoice] }, optional: false, nullable: false

      field :pagination, -> { Wavix::Types::Pagination }, optional: false, nullable: false
    end
  end
end
