# frozen_string_literal: true

module Wavix
  module LinkShortener
    module Types
      class ShortLinkCreateRequest < Internal::Types::Model
        field :link, -> { String }, optional: false, nullable: false

        field :expiration_time, -> { String }, optional: true, nullable: false

        field :fallback_url, -> { String }, optional: true, nullable: false

        field :phone, -> { String }, optional: true, nullable: false

        field :utm_campaign, -> { String }, optional: true, nullable: false
      end
    end
  end
end
