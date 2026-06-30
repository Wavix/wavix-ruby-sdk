# frozen_string_literal: true

module Wavix
  module Types
    # The feedback provided by the external vetting provider
    class TenDlcBrandVettingAppealAppealOutcomeFeedback < Internal::Types::Model
      field :reasons, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
