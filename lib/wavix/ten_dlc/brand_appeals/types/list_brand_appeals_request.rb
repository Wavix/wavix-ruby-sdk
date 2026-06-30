# frozen_string_literal: true

module Wavix
  module TenDlc
    module BrandAppeals
      module Types
        class ListBrandAppealsRequest < Internal::Types::Model
          field :brand_id, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
