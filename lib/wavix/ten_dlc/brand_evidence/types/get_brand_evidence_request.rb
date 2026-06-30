# frozen_string_literal: true

module Wavix
  module TenDlc
    module BrandEvidence
      module Types
        class GetBrandEvidenceRequest < Internal::Types::Model
          field :brand_id, -> { String }, optional: false, nullable: false

          field :id, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
