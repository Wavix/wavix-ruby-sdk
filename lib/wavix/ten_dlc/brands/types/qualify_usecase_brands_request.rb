# frozen_string_literal: true

module Wavix
  module TenDlc
    module Brands
      module Types
        class QualifyUsecaseBrandsRequest < Internal::Types::Model
          field :brand_id, -> { String }, optional: false, nullable: false

          field :use_case, -> { Wavix::TenDlc::Brands::Types::QualifyUsecaseBrandsRequestUseCase }, optional: false, nullable: false
        end
      end
    end
  end
end
