# frozen_string_literal: true

module Wavix
  module Types
    class ShortLinkMetricsResponse < Internal::Types::Model
      field :metrics, -> { Internal::Types::Array[Wavix::Types::ShortLinkMetricsItem] }, optional: false, nullable: false

      field :pagination, -> { Wavix::Types::Pagination }, optional: false, nullable: false
    end
  end
end
