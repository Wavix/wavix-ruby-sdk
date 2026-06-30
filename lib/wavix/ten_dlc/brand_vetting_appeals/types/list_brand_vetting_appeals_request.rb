# frozen_string_literal: true

module Wavix
  module TenDlc
    module BrandVettingAppeals
      module Types
        class ListBrandVettingAppealsRequest < Internal::Types::Model
          field :brand_id, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
