# frozen_string_literal: true

module Wavix
  module Types
    class ProfileConfigResponse < Internal::Types::Model
      field :balance, -> { String }, optional: false, nullable: false

      field :global_limits, -> { Wavix::Types::AccountLimits }, optional: false, nullable: false
    end
  end
end
