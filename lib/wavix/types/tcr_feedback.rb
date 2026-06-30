# frozen_string_literal: true

module Wavix
  module Types
    class TcrFeedback < Internal::Types::Model
      field :category, -> { Internal::Types::Array[Wavix::Types::TcrFeedbackCategory] }, optional: false, nullable: false
    end
  end
end
