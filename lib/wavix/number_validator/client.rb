# frozen_string_literal: true

module Wavix
  module NumberValidator
    class Client
      # @param client [Wavix::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Validates a single phone number and returns line type, carrier, portability, and reachability details.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :phone_number
      # @option params [Wavix::Types::PhoneNumberValidationType] :type
      #
      # @return [Wavix::NumberValidator::Types::GetNumberValidatorResponse]
      def get(request_options: {}, **params)
        params = Wavix::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["phone_number"] = params[:phone_number] if params.key?(:phone_number)
        query_params["type"] = params[:type] if params.key?(:type)

        request = Wavix::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/validation",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Wavix::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Wavix::NumberValidator::Types::GetNumberValidatorResponse.load(response.body)
        else
          error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Validates a batch of phone numbers. When `async` is `true`, returns a `request_id` to poll for results instead
      # of the validation details.
      #
      # @param request_options [Hash]
      # @param params [Wavix::NumberValidator::Types::PhoneValidationRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Wavix::Types::NumberValidatorCreateBulkResponse]
      def create_bulk(request_options: {}, **params)
        params = Wavix::Internal::Types::Utils.normalize_keys(params)
        request = Wavix::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/validation",
          body: Wavix::NumberValidator::Types::PhoneValidationRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Wavix::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Wavix::Types::NumberValidatorCreateBulkResponse.load(response.body)
        else
          error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @return [Wavix::Results::Client]
      def results
        @results ||= Wavix::NumberValidator::Results::Client.new(client: @client)
      end
    end
  end
end
