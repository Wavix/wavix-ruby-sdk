# frozen_string_literal: true

module Wavix
  module SmsAndMms
    module OptOuts
      module Types
        class OptOutCreateRequest < Internal::Types::Model
          field :opt_out, -> { Wavix::Types::OptOut }, optional: false, nullable: false
        end
      end
    end
  end
end
