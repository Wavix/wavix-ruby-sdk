# frozen_string_literal: true

module Wavix
  module TwoFa
    module Sessions
      module Types
        class ListSessionsRequest < Internal::Types::Model
          field :service_id, -> { String }, optional: false, nullable: false

          field :from, -> { String }, optional: false, nullable: false

          field :to, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
