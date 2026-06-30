# frozen_string_literal: true

module Wavix
  module TenDlc
    module Brands
      module Types
        # Represents a 10DLC brand registered for application-to-person messaging. A Brand identifies the business
        # behind one or more messaging campaigns.
        class GetBrandsResponse < Internal::Types::Model
          field :brand_id, -> { String }, optional: false, nullable: false

          field :dba_name, -> { String }, optional: false, nullable: false

          field :company_name, -> { String }, optional: false, nullable: false

          field :entity_type, -> { Wavix::TenDlc::Brands::Types::GetBrandsResponseEntityType }, optional: false, nullable: false

          field :vertical, -> { String }, optional: false, nullable: false

          field :ein_taxid, -> { String }, optional: false, nullable: false

          field :ein_taxid_country, -> { String }, optional: false, nullable: false

          field :status, -> { Wavix::TenDlc::Brands::Types::GetBrandsResponseStatus }, optional: false, nullable: false

          field :website, -> { String }, optional: true, nullable: false

          field :stock_symbol, -> { String }, optional: true, nullable: false

          field :stock_exchange, -> { String }, optional: true, nullable: false

          field :first_name, -> { String }, optional: false, nullable: false

          field :last_name, -> { String }, optional: false, nullable: false

          field :phone_number, -> { String }, optional: false, nullable: false

          field :email, -> { String }, optional: false, nullable: false

          field :street_address, -> { String }, optional: false, nullable: false

          field :city, -> { String }, optional: false, nullable: false

          field :state_or_province, -> { String }, optional: true, nullable: false

          field :country, -> { String }, optional: false, nullable: false

          field :zip, -> { String }, optional: false, nullable: false

          field :feedback, -> { String }, optional: false, nullable: true

          field :mock, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :created_at, -> { String }, optional: false, nullable: false

          field :updated_at, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
