# frozen_string_literal: true

module Wavix
  module TenDlc
    module BrandAppeals
      class Client
        # @param client [Wavix::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Returns the identity verification appeals submitted for the 10DLC Brand identified by `brand_id`.
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
        # @return [Array[Wavix::Types::TenDlcBrandAppeal]]
        def list(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v3/10dlc/brands/#{URI.encode_uri_component(params[:brand_id].to_s)}/appeals",
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

        # Submits an appeal for 10DLC brand identity verification. Provide any additional documentation to support the
        # appeal. Use `appeal_category` to specify the appeal type:
        # - `VERIFY_TAX_ID` — Use if the brand is UNVERIFIED due to a tax ID mismatch. Applies to private companies,
        # public companies, non-profits, and government entities.
        # - `VERIFY_NON_PROFIT` — Use if a non-profit brand is UNVERIFIED or VERIFIED but missing tax-exempt status.
        # - `VERIFY_GOVERNMENT` — Use if a government brand is UNVERIFIED or VERIFIED but missing government entity
        # status.
        #
        # @param request_options [Hash]
        # @param params [Wavix::TenDlc::BrandAppeals::Types::CreateBrandAppealsRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :brand_id
        #
        # @return [Wavix::TenDlc::BrandAppeals::Types::CreateBrandAppealsResponse]
        def create(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request_data = Wavix::TenDlc::BrandAppeals::Types::CreateBrandAppealsRequest.new(params).to_h
          non_body_param_names = %w[brand_id]
          body = request_data.except(*non_body_param_names)

          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v3/10dlc/brands/#{URI.encode_uri_component(params[:brand_id].to_s)}/appeals",
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
            Wavix::TenDlc::BrandAppeals::Types::CreateBrandAppealsResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
