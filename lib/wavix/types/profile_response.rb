# frozen_string_literal: true

module Wavix
  module Types
    class ProfileResponse < Internal::Types::Model
      field :id, -> { Integer }, optional: false, nullable: false

      field :email, -> { String }, optional: false, nullable: false

      field :first_name, -> { String }, optional: false, nullable: true

      field :last_name, -> { String }, optional: false, nullable: true

      field :phone, -> { String }, optional: false, nullable: true

      field :additional_info, -> { String }, optional: false, nullable: true

      field :contact_email, -> { String }, optional: false, nullable: true

      field :timezone, -> { String }, optional: false, nullable: false

      field :job_title, -> { String }, optional: false, nullable: true

      field :default_short_link_endpoint, -> { String }, optional: false, nullable: true

      field :default_destinations, -> { Internal::Types::Array[Wavix::Types::ProfileResponseDefaultDestinationsItem] }, optional: false, nullable: false

      field :company_info, -> { Wavix::Types::ProfileResponseCompanyInfo }, optional: false, nullable: true
    end
  end
end
