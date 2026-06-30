# frozen_string_literal: true

module Wavix
  module Buy
    module Numbers
      module Types
        class ListNumbersResponse < Internal::Types::Model
          field :dids, -> { Internal::Types::Array[Wavix::Types::AvailableNumber] }, optional: false, nullable: false

          field :pagination, -> { Wavix::Types::Pagination }, optional: false, nullable: false
        end
      end
    end
  end
end
