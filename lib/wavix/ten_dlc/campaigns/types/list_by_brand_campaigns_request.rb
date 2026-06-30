# frozen_string_literal: true

module Wavix
  module TenDlc
    module Campaigns
      module Types
        class ListByBrandCampaignsRequest < Internal::Types::Model
          field :brand_id, -> { String }, optional: false, nullable: false

          field :name, -> { String }, optional: true, nullable: false

          field :usecase, -> { String }, optional: true, nullable: false

          field :status, -> { String }, optional: true, nullable: false

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
