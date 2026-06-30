# frozen_string_literal: true

module Wavix
  module TenDlc
    module Brands
      module Types
        class ListBrandsRequest < Internal::Types::Model
          field :dba_name, -> { String }, optional: true, nullable: false

          field :company_name, -> { String }, optional: true, nullable: false

          field :entity_type, -> { String }, optional: true, nullable: false

          field :status, -> { String }, optional: true, nullable: false

          field :country, -> { String }, optional: true, nullable: false

          field :show_deleted, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :ein_taxid, -> { String }, optional: true, nullable: false

          field :mock, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :created_before, -> { String }, optional: true, nullable: false

          field :created_after, -> { String }, optional: true, nullable: false

          field :page, -> { Integer }, optional: true, nullable: false

          field :per_page, -> { Integer }, optional: true, nullable: false
        end
      end
    end
  end
end
