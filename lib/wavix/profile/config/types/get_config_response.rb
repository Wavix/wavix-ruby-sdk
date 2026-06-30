# frozen_string_literal: true

module Wavix
  module Profile
    module Config
      module Types
        class GetConfigResponse < Internal::Types::Model
          field :balance, -> { String }, optional: false, nullable: false

          field :global_limits, -> { Wavix::Types::AccountLimits }, optional: false, nullable: false
        end
      end
    end
  end
end
