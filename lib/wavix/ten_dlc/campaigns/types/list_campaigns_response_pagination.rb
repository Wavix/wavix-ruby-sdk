# frozen_string_literal: true

module Wavix
  module TenDlc
    module Campaigns
      module Types
        # Pagination metadata for the result set.
        class ListCampaignsResponsePagination < Internal::Types::Model
          field :current_page, -> { Integer }, optional: false, nullable: false

          field :per_page, -> { Integer }, optional: false, nullable: false

          field :total, -> { Integer }, optional: false, nullable: false

          field :total_pages, -> { Integer }, optional: false, nullable: false
        end
      end
    end
  end
end
