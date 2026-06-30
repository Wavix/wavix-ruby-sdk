# frozen_string_literal: true

module Wavix
  module Types
    class ShortLinkResponse < Internal::Types::Model
      field :short_link, -> { String }, optional: false, nullable: false
    end
  end
end
