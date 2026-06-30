# frozen_string_literal: true

module Wavix
  class Client
    # @param token [String]
    # @param base_url [String, nil]
    # @param max_retries [Integer]
    #
    # @return [void]
    def initialize(token:, base_url: nil, max_retries: 2)
      @raw_client = Wavix::Internal::Http::RawClient.new(
        base_url: base_url || Wavix::Environment::DEFAULT,
        headers: {
          "User-Agent" => "wavix-ruby-sdk/1.0.0",
          "X-Fern-Language" => "Ruby",
          Authorization: "Bearer #{token}"
        },
        max_retries: max_retries
      )
    end

    # @return [Wavix::APIKeys::Client]
    def api_keys
      @api_keys ||= Wavix::APIKeys::Client.new(client: @raw_client)
    end

    # @return [Wavix::SipTrunks::Client]
    def sip_trunks
      @sip_trunks ||= Wavix::SipTrunks::Client.new(client: @raw_client)
    end

    # @return [Wavix::Cart::Client]
    def cart
      @cart ||= Wavix::Cart::Client.new(client: @raw_client)
    end

    # @return [Wavix::Numbers::Client]
    def numbers
      @numbers ||= Wavix::Numbers::Client.new(client: @raw_client)
    end

    # @return [Wavix::Cdrs::Client]
    def cdrs
      @cdrs ||= Wavix::Cdrs::Client.new(client: @raw_client)
    end

    # @return [Wavix::CallRecording::Client]
    def call_recording
      @call_recording ||= Wavix::CallRecording::Client.new(client: @raw_client)
    end

    # @return [Wavix::SpeechAnalytics::Client]
    def speech_analytics
      @speech_analytics ||= Wavix::SpeechAnalytics::Client.new(client: @raw_client)
    end

    # @return [Wavix::CallWebhooks::Client]
    def call_webhooks
      @call_webhooks ||= Wavix::CallWebhooks::Client.new(client: @raw_client)
    end

    # @return [Wavix::CallControl::Client]
    def call_control
      @call_control ||= Wavix::CallControl::Client.new(client: @raw_client)
    end

    # @return [Wavix::NumberValidator::Client]
    def number_validator
      @number_validator ||= Wavix::NumberValidator::Client.new(client: @raw_client)
    end

    # @return [Wavix::VoiceCampaigns::Client]
    def voice_campaigns
      @voice_campaigns ||= Wavix::VoiceCampaigns::Client.new(client: @raw_client)
    end

    # @return [Wavix::LinkShortener::Client]
    def link_shortener
      @link_shortener ||= Wavix::LinkShortener::Client.new(client: @raw_client)
    end

    # @return [Wavix::Profile::Client]
    def profile
      @profile ||= Wavix::Profile::Client.new(client: @raw_client)
    end

    # @return [Wavix::SubAccounts::Client]
    def sub_accounts
      @sub_accounts ||= Wavix::SubAccounts::Client.new(client: @raw_client)
    end

    # @return [Wavix::SmsAndMms::Client]
    def sms_and_mms
      @sms_and_mms ||= Wavix::SmsAndMms::Client.new(client: @raw_client)
    end

    # @return [Wavix::Billing::Client]
    def billing
      @billing ||= Wavix::Billing::Client.new(client: @raw_client)
    end

    # @return [Wavix::Buy::Client]
    def buy
      @buy ||= Wavix::Buy::Client.new(client: @raw_client)
    end

    # @return [Wavix::TenDlc::Client]
    def ten_dlc
      @ten_dlc ||= Wavix::TenDlc::Client.new(client: @raw_client)
    end

    # @return [Wavix::TwoFa::Client]
    def two_fa
      @two_fa ||= Wavix::TwoFa::Client.new(client: @raw_client)
    end

    # @return [Wavix::Webrtc::Client]
    def webrtc
      @webrtc ||= Wavix::Webrtc::Client.new(client: @raw_client)
    end
  end
end
