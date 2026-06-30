# frozen_string_literal: true

module Wavix
  module Types
    # A list of 10DLC Brands
    class TenDlcBrandListResponse < Internal::Types::Model
      field :items, -> { Internal::Types::Array[Wavix::Types::TenDlcBrand] }, optional: false, nullable: false

      field :pagination, -> { Wavix::Types::TenDlcBrandListResponsePagination }, optional: false, nullable: false
    end
  end
end
