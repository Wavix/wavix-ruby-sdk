# frozen_string_literal: true

module Wavix
  module Types
    # Country.
    class ProfileResponseCompanyInfoCountry < Internal::Types::Model
      field :country_name, -> { String }, optional: true, nullable: false

      field :country_id, -> { Integer }, optional: true, nullable: false
    end
  end
end
