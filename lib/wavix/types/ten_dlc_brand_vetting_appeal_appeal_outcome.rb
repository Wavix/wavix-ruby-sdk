# frozen_string_literal: true

module Wavix
  module Types
    # Outcome of the appeal, including the revised vetting status and score.
    class TenDlcBrandVettingAppealAppealOutcome < Internal::Types::Model
      field :vet_status, -> { String }, optional: false, nullable: false

      field :vet_score, -> { Integer }, optional: false, nullable: false

      field :feedback, -> { Wavix::Types::TenDlcBrandVettingAppealAppealOutcomeFeedback }, optional: false, nullable: false
    end
  end
end
