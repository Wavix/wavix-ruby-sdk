# frozen_string_literal: true

module Wavix
  module TenDlc
    module BrandVettings
      module Types
        class TenDlcBrandVettingImportRequest < Internal::Types::Model
          field :brand_id, -> { String }, optional: false, nullable: false

          field :evp_id, -> { String }, optional: false, nullable: false

          field :vetting_id, -> { String }, optional: false, nullable: false

          field :vetting_token, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
