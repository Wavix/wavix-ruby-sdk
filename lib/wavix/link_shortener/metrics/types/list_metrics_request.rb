# frozen_string_literal: true

module Wavix
  module LinkShortener
    module Metrics
      module Types
        class ListMetricsRequest < Internal::Types::Model
          field :from, -> { String }, optional: false, nullable: false

          field :to, -> { String }, optional: false, nullable: false

          field :phone, -> { String }, optional: true, nullable: false

          field :utm_campaign, -> { String }, optional: true, nullable: false

          field :page, -> { Integer }, optional: true, nullable: false

          field :per_page, -> { Integer }, optional: true, nullable: false
        end
      end
    end
  end
end
