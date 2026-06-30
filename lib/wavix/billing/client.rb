# frozen_string_literal: true

module Wavix
  module Billing
    class Client
      # @param client [Wavix::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # @return [Wavix::Transactions::Client]
      def transactions
        @transactions ||= Wavix::Billing::Transactions::Client.new(client: @client)
      end

      # @return [Wavix::Invoices::Client]
      def invoices
        @invoices ||= Wavix::Billing::Invoices::Client.new(client: @client)
      end
    end
  end
end
