# frozen_string_literal: true

module Wavix
  module Types
    # Brand identity verification appeal details.
    class TenDlcBrandAppealCreateRequest < Internal::Types::Model
      field :appeal_categories, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :evidence, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :explanation, -> { String }, optional: true, nullable: false
    end
  end
end
