# frozen_string_literal: true

module Wavix
  module TenDlc
    class Client
      # @param client [Wavix::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # @return [Wavix::Brands::Client]
      def brands
        @brands ||= Wavix::TenDlc::Brands::Client.new(client: @client)
      end

      # @return [Wavix::BrandAppeals::Client]
      def brand_appeals
        @brand_appeals ||= Wavix::TenDlc::BrandAppeals::Client.new(client: @client)
      end

      # @return [Wavix::BrandEvidence::Client]
      def brand_evidence
        @brand_evidence ||= Wavix::TenDlc::BrandEvidence::Client.new(client: @client)
      end

      # @return [Wavix::BrandVettings::Client]
      def brand_vettings
        @brand_vettings ||= Wavix::TenDlc::BrandVettings::Client.new(client: @client)
      end

      # @return [Wavix::BrandVettingAppeals::Client]
      def brand_vetting_appeals
        @brand_vetting_appeals ||= Wavix::TenDlc::BrandVettingAppeals::Client.new(client: @client)
      end

      # @return [Wavix::Campaigns::Client]
      def campaigns
        @campaigns ||= Wavix::TenDlc::Campaigns::Client.new(client: @client)
      end

      # @return [Wavix::Subscriptions::Client]
      def subscriptions
        @subscriptions ||= Wavix::TenDlc::Subscriptions::Client.new(client: @client)
      end

      # @return [Wavix::CampaignNumbers::Client]
      def campaign_numbers
        @campaign_numbers ||= Wavix::TenDlc::CampaignNumbers::Client.new(client: @client)
      end
    end
  end
end
