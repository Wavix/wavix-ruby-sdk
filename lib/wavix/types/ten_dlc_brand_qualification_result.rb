# frozen_string_literal: true

module Wavix
  module Types
    class TenDlcBrandQualificationResult < Internal::Types::Model
      field :mno_metadata, -> { Internal::Types::Array[Wavix::Types::TenDlcmnoMetadata] }, optional: false, nullable: false

      field :monthly_fee, -> { Integer }, optional: false, nullable: false

      field :usecase, -> { String }, optional: false, nullable: false
    end
  end
end
