# frozen_string_literal: true

module Wavix
  module Types
    class SubAccountsListResponse < Internal::Types::Model
      field :sub_organizations, -> { Internal::Types::Array[Wavix::Types::SubOrganizationResponse] }, optional: true, nullable: false

      field :pagination, -> { Wavix::Types::Pagination }, optional: true, nullable: false
    end
  end
end
