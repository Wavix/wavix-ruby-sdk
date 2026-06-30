# frozen_string_literal: true

module Wavix
  module Types
    class ListBrandEvidenceResponse < Internal::Types::Model
      field :items, -> { Internal::Types::Array[Wavix::Types::TenDlcBrandEvidence] }, optional: false, nullable: false
    end
  end
end
