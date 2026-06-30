# frozen_string_literal: true

module Wavix
  module TenDlc
    module BrandVettings
      class Client
        # @param client [Wavix::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Returns the external vettings for the 10DLC Brand identified by `brand_id`.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :brand_id
        #
        # @return [Array[Wavix::Types::TenDlcBrandVetting]]
        def list(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v3/10dlc/brands/#{URI.encode_uri_component(params[:brand_id].to_s)}/vettings",
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Wavix::Errors::TimeoutError
          end
          code = response.code.to_i
          return if code.between?(200, 299)

          error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end

        # Requests external vetting for a 10DLC Brand. Supported providers: `AEGIS`, `CV`, `WMC`. Supported classes:
        # `STANDARD`, `ENHANCED`.
        #
        # @param request_options [Hash]
        # @param params [Wavix::TenDlc::BrandVettings::Types::TenDlcBrandVettingCreateRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :brand_id
        #
        # @return [Wavix::Types::TenDlcBrandVetting]
        def create(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request_data = Wavix::TenDlc::BrandVettings::Types::TenDlcBrandVettingCreateRequest.new(params).to_h
          non_body_param_names = %w[brand_id]
          body = request_data.except(*non_body_param_names)

          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v3/10dlc/brands/#{URI.encode_uri_component(params[:brand_id].to_s)}/vettings",
            body: body,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Wavix::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Wavix::Types::TenDlcBrandVetting.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Imports an existing external vetting record into the 10DLC Brand identified by `brand_id`.
        #
        # @param request_options [Hash]
        # @param params [Wavix::TenDlc::BrandVettings::Types::TenDlcBrandVettingImportRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :brand_id
        #
        # @return [Wavix::Types::TenDlcBrandVetting]
        def import(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request_data = Wavix::TenDlc::BrandVettings::Types::TenDlcBrandVettingImportRequest.new(params).to_h
          non_body_param_names = %w[brand_id]
          body = request_data.except(*non_body_param_names)

          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "PUT",
            path: "v3/10dlc/brands/#{URI.encode_uri_component(params[:brand_id].to_s)}/vettings",
            body: body,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Wavix::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Wavix::Types::TenDlcBrandVetting.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
