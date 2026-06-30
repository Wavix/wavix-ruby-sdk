# frozen_string_literal: true

module Wavix
  module APIKeys
    class Client
      # @param client [Wavix::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Returns the API keys belonging to the authenticated account.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :label
      #
      # @return [Array[Wavix::Types::APIKey]]
      def list(request_options: {}, **params)
        params = Wavix::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["label"] = params[:label] if params.key?(:label)

        request = Wavix::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/api-keys",
          query: query_params,
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

      # Creates an API key for the authenticated account. Restrict access by listing permitted IP addresses in
      # `permitted_ips`.
      #
      # @param request_options [Hash]
      # @param params [Wavix::APIKeys::Types::APIKeyCreateRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Wavix::Types::APIKey]
      def create(request_options: {}, **params)
        params = Wavix::Internal::Types::Utils.normalize_keys(params)
        request = Wavix::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/api-keys",
          body: Wavix::APIKeys::Types::APIKeyCreateRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Wavix::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Wavix::Types::APIKey.load(response.body)
        else
          error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Deletes the API key identified by `id`. Deletion is permanent and revokes the key immediately.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id
      #
      # @return [Wavix::Types::SuccessResponse]
      def delete(request_options: {}, **params)
        params = Wavix::Internal::Types::Utils.normalize_keys(params)
        request = Wavix::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "v1/api-keys/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Wavix::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Wavix::Types::SuccessResponse.load(response.body)
        else
          error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates an API key identified by `id`. Only the provided fields are changed.
      #
      # @param request_options [Hash]
      # @param params [Wavix::APIKeys::Types::APIKeyUpdateRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id
      #
      # @return [Wavix::Types::APIKey]
      def update(request_options: {}, **params)
        params = Wavix::Internal::Types::Utils.normalize_keys(params)
        request_data = Wavix::APIKeys::Types::APIKeyUpdateRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Wavix::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "v1/api-keys/#{URI.encode_uri_component(params[:id].to_s)}",
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
          Wavix::Types::APIKey.load(response.body)
        else
          error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
