# frozen_string_literal: true

module Wavix
  module TenDlc
    module Brands
      module Types
        class QualifyUsecaseBrandsResponse < Internal::Types::Model
          field :mno_metadata, -> { Internal::Types::Array[Wavix::Types::TenDlcmnoMetadata] }, optional: false, nullable: false

          field :monthly_fee, -> { Integer }, optional: false, nullable: false

          field :usecase, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
