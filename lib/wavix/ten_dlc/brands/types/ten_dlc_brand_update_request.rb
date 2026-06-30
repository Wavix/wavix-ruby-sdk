# frozen_string_literal: true

module Wavix
  module TenDlc
    module Brands
      module Types
        class TenDlcBrandUpdateRequest < Internal::Types::Model
          field :brand_id, -> { String }, optional: false, nullable: false

          field :dba_name, -> { String }, optional: true, nullable: false

          field :company_name, -> { String }, optional: true, nullable: false

          field :entity_type, -> { Wavix::TenDlc::Brands::Types::TenDlcBrandUpdateRequestEntityType }, optional: true, nullable: false

          field :vertical, -> { Wavix::TenDlc::Brands::Types::TenDlcBrandUpdateRequestVertical }, optional: true, nullable: false

          field :ein_taxid, -> { String }, optional: true, nullable: false

          field :ein_taxid_country, -> { String }, optional: true, nullable: false

          field :website, -> { String }, optional: true, nullable: false

          field :stock_symbol, -> { String }, optional: true, nullable: false

          field :stock_exchange, -> { String }, optional: true, nullable: false

          field :first_name, -> { String }, optional: true, nullable: false

          field :last_name, -> { String }, optional: true, nullable: false

          field :phone_number, -> { String }, optional: true, nullable: false

          field :email, -> { String }, optional: true, nullable: false

          field :street_address, -> { String }, optional: true, nullable: false

          field :city, -> { String }, optional: true, nullable: false

          field :state_or_province, -> { String }, optional: true, nullable: false

          field :zip, -> { String }, optional: true, nullable: false

          field :country, -> { String }, optional: true, nullable: false

          field :mock, -> { Internal::Types::Boolean }, optional: true, nullable: false
        end
      end
    end
  end
end
