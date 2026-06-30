# frozen_string_literal: true

module Wavix
  module Profile
    module Types
      class ProfileUpdateRequest < Internal::Types::Model
        field :additional_info, -> { String }, optional: true, nullable: false

        field :contacts, -> { String }, optional: true, nullable: false

        field :default_short_link_endpoint, -> { String }, optional: true, nullable: false

        field :first_name, -> { String }, optional: true, nullable: false

        field :last_name, -> { String }, optional: true, nullable: false

        field :phone, -> { String }, optional: true, nullable: false

        field :sms_relay_url, -> { String }, optional: true, nullable: false

        field :dlr_relay_url, -> { String }, optional: true, nullable: false

        field :time_zone, -> { String }, optional: true, nullable: false

        field :job_title, -> { String }, optional: true, nullable: false

        field :company_info, -> { Wavix::Profile::Types::ProfileUpdateRequestCompanyInfo }, optional: true, nullable: false
      end
    end
  end
end
