# frozen_string_literal: true

module Wavix
  module TenDlc
    module BrandVettings
      module Types
        class ListBrandVettingsRequest < Internal::Types::Model
          field :brand_id, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
