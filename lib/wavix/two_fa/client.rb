# frozen_string_literal: true

module Wavix
  module TwoFa
    class Client
      # @param client [Wavix::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # @return [Wavix::Verification::Client]
      def verification
        @verification ||= Wavix::TwoFa::Verification::Client.new(client: @client)
      end

      # @return [Wavix::Sessions::Client]
      def sessions
        @sessions ||= Wavix::TwoFa::Sessions::Client.new(client: @client)
      end

      # @return [Wavix::Events::Client]
      def events
        @events ||= Wavix::TwoFa::Events::Client.new(client: @client)
      end
    end
  end
end
