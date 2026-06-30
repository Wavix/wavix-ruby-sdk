# frozen_string_literal: true

module Wavix
  module Buy
    class Client
      # @param client [Wavix::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # @return [Wavix::Countries::Client]
      def countries
        @countries ||= Wavix::Buy::Countries::Client.new(client: @client)
      end

      # @return [Wavix::Regions::Client]
      def regions
        @regions ||= Wavix::Buy::Regions::Client.new(client: @client)
      end

      # @return [Wavix::Cities::Client]
      def cities
        @cities ||= Wavix::Buy::Cities::Client.new(client: @client)
      end

      # @return [Wavix::RegionCities::Client]
      def region_cities
        @region_cities ||= Wavix::Buy::RegionCities::Client.new(client: @client)
      end

      # @return [Wavix::Numbers::Client]
      def numbers
        @numbers ||= Wavix::Buy::Numbers::Client.new(client: @client)
      end
    end
  end
end
