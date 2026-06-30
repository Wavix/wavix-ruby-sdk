# frozen_string_literal: true

module Wavix
  module Profile
    module Types
      class ProfileUpdateRequestCompanyInfo < Internal::Types::Model
        field :name, -> { String }, optional: true, nullable: false

        field :industry, -> { Wavix::Profile::Types::ProfileUpdateRequestCompanyInfoIndustry }, optional: true, nullable: false

        field :billing_address, -> { String }, optional: true, nullable: false

        field :attn_contact_name, -> { String }, optional: true, nullable: false

        field :vat_number, -> { String }, optional: true, nullable: false

        field :country_code, -> { String }, optional: true, nullable: false
      end
    end
  end
end
