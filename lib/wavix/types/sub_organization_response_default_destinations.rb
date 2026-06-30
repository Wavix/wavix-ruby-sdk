# frozen_string_literal: true

module Wavix
  module Types
    # Default webhook URLs for inbound messages and delivery reports.
    class SubOrganizationResponseDefaultDestinations < Internal::Types::Model
      field :sms_endpoint, -> { String }, optional: false, nullable: false

      field :dlr_endpoint, -> { String }, optional: false, nullable: false
    end
  end
end
