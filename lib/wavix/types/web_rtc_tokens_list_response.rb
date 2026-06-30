# frozen_string_literal: true

module Wavix
  module Types
    # Paginated list of WebRTC tokens.
    class WebRtcTokensListResponse < Internal::Types::Model
      field :items, -> { Internal::Types::Array[Wavix::Types::WebRtcToken] }, optional: true, nullable: false

      field :pagination, -> { Wavix::Types::Pagination }, optional: true, nullable: false
    end
  end
end
