# frozen_string_literal: true

module Wavix
  module Types
    class ShortLinkMetricsItem < Internal::Types::Model
      field :latitude, -> { Integer }, optional: false, nullable: true

      field :longitude, -> { Integer }, optional: false, nullable: true

      field :operating_system, -> { String }, optional: false, nullable: true

      field :browser, -> { String }, optional: false, nullable: true

      field :language, -> { String }, optional: false, nullable: true

      field :phone, -> { String }, optional: false, nullable: true

      field :utm_campaign, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :link_hash, -> { String }, optional: false, nullable: false

      field :user_id, -> { Integer }, optional: false, nullable: false
    end
  end
end
