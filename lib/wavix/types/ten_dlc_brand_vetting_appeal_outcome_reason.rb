# frozen_string_literal: true

module Wavix
  module Types
    class TenDlcBrandVettingAppealOutcomeReason < Internal::Types::Model
      field :reasons, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
