# frozen_string_literal: true

module Wavix
  module Types
    # Sub-account details including the full API key. Returned only by the create operation.
    class SubOrganizationWithSecret < Internal::Types::Model
      field :id, -> { Integer }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :api_key, -> { String }, optional: false, nullable: false

      field :redacted_api_key, -> { String }, optional: false, nullable: true

      field :master_organization, -> { Integer }, optional: false, nullable: false

      field :status, -> { Wavix::Types::SubOrganizationWithSecretStatus }, optional: false, nullable: false

      field :default_destinations, -> { Wavix::Types::SubOrganizationWithSecretDefaultDestinations }, optional: false, nullable: false
    end
  end
end
