# frozen_string_literal: true

module Wavix
  module TenDlc
    module CampaignNumbers
      class Client
        # @param client [Wavix::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Links a phone number to a 10DLC Campaign. Wavix automatically creates a Sender ID once the number is approved.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :brand_id
        # @option params [String] :campaign_id
        # @option params [String] :number
        #
        # @return [Wavix::TenDlc::CampaignNumbers::Types::LinkCampaignNumbersResponse]
        def link(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v3/10dlc/brands/#{URI.encode_uri_component(params[:brand_id].to_s)}/campaigns/#{URI.encode_uri_component(params[:campaign_id].to_s)}/numbers/#{URI.encode_uri_component(params[:number].to_s)}",
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Wavix::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Wavix::TenDlc::CampaignNumbers::Types::LinkCampaignNumbersResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Unlinks a phone number from a 10DLC Campaign. The associated Sender ID is also deleted.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :brand_id
        # @option params [String] :campaign_id
        # @option params [String] :number
        #
        # @return [Wavix::TenDlc::CampaignNumbers::Types::UnlinkCampaignNumbersResponse]
        def unlink(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "DELETE",
            path: "v3/10dlc/brands/#{URI.encode_uri_component(params[:brand_id].to_s)}/campaigns/#{URI.encode_uri_component(params[:campaign_id].to_s)}/numbers/#{URI.encode_uri_component(params[:number].to_s)}",
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Wavix::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Wavix::TenDlc::CampaignNumbers::Types::UnlinkCampaignNumbersResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Returns the phone numbers linked to the 10DLC Campaign identified by `campaign_id`.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :brand_id
        # @option params [String] :campaign_id
        #
        # @return [Wavix::TenDlc::CampaignNumbers::Types::ListCampaignNumbersResponse]
        def list(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v3/10dlc/brands/#{URI.encode_uri_component(params[:brand_id].to_s)}/campaigns/#{URI.encode_uri_component(params[:campaign_id].to_s)}/numbers",
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Wavix::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Wavix::TenDlc::CampaignNumbers::Types::ListCampaignNumbersResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
