# frozen_string_literal: true

module Wavix
  module TenDlc
    module Brands
      module Types
        class DeleteBrandsRequest < Internal::Types::Model
          field :brand_id, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
