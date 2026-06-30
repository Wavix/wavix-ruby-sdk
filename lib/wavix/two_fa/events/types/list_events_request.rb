# frozen_string_literal: true

module Wavix
  module TwoFa
    module Events
      module Types
        class ListEventsRequest < Internal::Types::Model
          field :session_id, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
