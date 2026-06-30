# frozen_string_literal: true

module Wavix
  module SmsAndMms
    class Client
      # @param client [Wavix::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # @return [Wavix::SenderIDs::Client]
      def sender_ids
        @sender_ids ||= Wavix::SmsAndMms::SenderIDs::Client.new(client: @client)
      end

      # @return [Wavix::OptOuts::Client]
      def opt_outs
        @opt_outs ||= Wavix::SmsAndMms::OptOuts::Client.new(client: @client)
      end

      # @return [Wavix::Messages::Client]
      def messages
        @messages ||= Wavix::SmsAndMms::Messages::Client.new(client: @client)
      end
    end
  end
end
