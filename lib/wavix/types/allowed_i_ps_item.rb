# frozen_string_literal: true

module Wavix
  module Types
    class AllowedIPsItem < Internal::Types::Model
      field :id, -> { Integer }, optional: false, nullable: false

      field :ip, -> { String }, optional: false, nullable: false
    end
  end
end
