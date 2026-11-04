# frozen_string_literal: true

module Wavix
  module CallWebhooks
    class Client
      # @param client [Wavix::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Returns the configured call webhooks for the authenticated account. Wavix sends POST callbacks for `on-call` and
      # `post-call` events.
      #
      # @param request_options [Hash]
      # @param _params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Array[Wavix::Types::CallWebhookListResponseItem]]
      def list(request_options: {}, **_params)
        request = Wavix::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/calls/webhooks",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Wavix::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Wavix::Types::CallWebhookListResponse.load(response.body)
        else
          error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Registers a callback URL for the `on-call` or `post-call` event. Wavix sends a POST callback to the URL when the
      # event occurs. Creates persistent configuration that forwards call metadata to the URL on every matching call
      # until the webhook is deleted.
      #
      # **Behavior:** Without `expected_url`, the webhook is set to `url` whatever it was before. With `expected_url`,
      # the webhook is set only while it currently has that URL; an empty string matches an unset webhook. Otherwise the
      # call returns `409` and the webhook is unchanged. Setting the URL the webhook already has succeeds. If the call
      # returns a `Something went wrong` error, the webhook is unchanged and you can retry the request.
      #
      # @param request_options [Hash]
      # @param params [Wavix::CallWebhooks::Types::CallWebhooksCreateRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Wavix::Types::CallWebhook]
      def create(request_options: {}, **params)
        params = Wavix::Internal::Types::Utils.normalize_keys(params)
        request = Wavix::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/calls/webhooks",
          body: Wavix::CallWebhooks::Types::CallWebhooksCreateRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Wavix::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Wavix::Types::CallWebhook.load(response.body)
        else
          error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Removes the call webhook for the given event type. Wavix stops sending callbacks for that event.
      #
      # **Behavior:** Without `expected_url`, the webhook is cleared whatever URL it has. With `expected_url`, the
      # webhook is cleared only while it currently has that URL; an empty value matches an unset webhook. Otherwise the
      # call returns `409` and the webhook is unchanged. Clearing an unset webhook succeeds. Percent-encode the
      # `expected_url` value in the query string. If the call returns a `Something went wrong` error, the webhook is
      # unchanged and you can retry the request.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Wavix::CallWebhooks::Types::DeleteCallWebhooksRequestEventType] :event_type
      # @option params [String, nil] :expected_url
      #
      # @return [Wavix::Types::SuccessResponse]
      def delete(request_options: {}, **params)
        params = Wavix::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["event_type"] = params[:event_type] if params.key?(:event_type)
        query_params["expected_url"] = params[:expected_url] if params.key?(:expected_url)

        request = Wavix::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "v1/calls/webhooks",
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
          Wavix::Types::SuccessResponse.load(response.body)
        else
          error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
