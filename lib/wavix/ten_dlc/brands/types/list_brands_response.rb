# frozen_string_literal: true

module Wavix
  module TenDlc
    module Brands
      module Types
        # A list of 10DLC Brands
        class ListBrandsResponse < Internal::Types::Model
          field :items, -> { Internal::Types::Array[Wavix::Types::TenDlcBrand] }, optional: false, nullable: false

          field :pagination, -> { Wavix::TenDlc::Brands::Types::ListBrandsResponsePagination }, optional: false, nullable: false
        end
      end
    end
  end
end
