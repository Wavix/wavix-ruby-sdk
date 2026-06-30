# frozen_string_literal: true

module Wavix
  module Webrtc
    class Client
      # @param client [Wavix::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # @return [Wavix::Tokens::Client]
      def tokens
        @tokens ||= Wavix::Webrtc::Tokens::Client.new(client: @client)
      end
    end
  end
end
