# frozen_string_literal: true

module Wavix
  module Types
    class TenDlcBrandVettingAppealOutcome < Internal::Types::Model
      field :vet_status, -> { String }, optional: false, nullable: false

      field :vet_score, -> { Integer }, optional: false, nullable: false

      field :feedback, -> { Wavix::Types::TenDlcBrandVettingAppealOutcomeFeedback }, optional: false, nullable: false
    end
  end
end
