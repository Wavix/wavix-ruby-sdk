# frozen_string_literal: true

module Wavix
  module Types
    # Sub-account details including API key and webhook configurations.
    class SubOrganizationResponse < Internal::Types::Model
      field :id, -> { Integer }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :api_key, -> { String }, optional: false, nullable: false

      field :master_organization, -> { Integer }, optional: false, nullable: false

      field :status, -> { Wavix::Types::SubOrganizationResponseStatus }, optional: false, nullable: false

      field :default_destinations, -> { Wavix::Types::SubOrganizationResponseDefaultDestinations }, optional: false, nullable: false
    end
  end
end
