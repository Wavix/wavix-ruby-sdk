# frozen_string_literal: true

module Wavix
  module CallControl
    module Streams
      module Types
        class CallStreamCreateRequest < Internal::Types::Model
          field :call_id, -> { String }, optional: false, nullable: false

          field :stream_url, -> { String }, optional: false, nullable: false

          field :stream_type, -> { Wavix::Types::CallStreamType }, optional: false, nullable: false

          field :stream_channel, -> { Wavix::Types::CallStreamChannel }, optional: false, nullable: false
        end
      end
    end
  end
end
