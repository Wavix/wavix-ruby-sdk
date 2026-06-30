# frozen_string_literal: true

module Wavix
  module Types
    # Company details.
    class ProfileResponseCompanyInfo < Internal::Types::Model
      field :name, -> { String }, optional: true, nullable: false

      field :industry, -> { Wavix::Types::ProfileResponseCompanyInfoIndustry }, optional: true, nullable: false

      field :address, -> { String }, optional: true, nullable: false

      field :attn_contact_name, -> { String }, optional: true, nullable: false

      field :vat_number, -> { String }, optional: true, nullable: false

      field :country, -> { Wavix::Types::ProfileResponseCompanyInfoCountry }, optional: true, nullable: false
    end
  end
end
