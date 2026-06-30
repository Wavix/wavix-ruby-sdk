# frozen_string_literal: true

module Wavix
  module Types
    # The appeal outcome details
    class TenDlcBrandAppealOutcome < Internal::Types::Model
      field :optional_attributes, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

      field :vetting_status, -> { Wavix::Types::TenDlcBrandAppealOutcomeVettingStatus }, optional: false, nullable: false

      field :feedback, -> { Wavix::Types::TenDlcBrandAppealOutcomeFeedback }, optional: false, nullable: false
    end
  end
end
