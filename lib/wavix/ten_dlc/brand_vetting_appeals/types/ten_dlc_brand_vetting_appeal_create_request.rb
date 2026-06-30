# frozen_string_literal: true

module Wavix
  module TenDlc
    module BrandVettingAppeals
      module Types
        class TenDlcBrandVettingAppealCreateRequest < Internal::Types::Model
          field :brand_id, -> { String }, optional: false, nullable: false

          field :appeal_categories, -> { Internal::Types::Array[String] }, optional: false, nullable: false

          field :evidence, -> { Internal::Types::Array[String] }, optional: false, nullable: false

          field :explanation, -> { String }, optional: true, nullable: false

          field :evp_id, -> { String }, optional: true, nullable: false

          field :vetting_id, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
