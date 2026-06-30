# frozen_string_literal: true

module Wavix
  module SmsAndMms
    module Messages
      class Client
        # @param client [Wavix::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Returns a paginated list of SMS and MMS messages for the authenticated account, filtered by direction, date,
        # and other criteria.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String, nil] :sent_after
        # @option params [String, nil] :sent_before
        # @option params [String] :type
        # @option params [String, nil] :from
        # @option params [String, nil] :to
        # @option params [Wavix::Types::MessageDeliveryStatus, nil] :status
        # @option params [String, nil] :tag
        # @option params [Wavix::SmsAndMms::Messages::Types::ListMessagesRequestMessageType, nil] :message_type
        # @option params [Integer, nil] :page
        # @option params [Integer, nil] :per_page
        #
        # @return [Wavix::SmsAndMms::Messages::Types::ListMessagesResponse]
        def list(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          query_params = {}
          query_params["sent_after"] = params[:sent_after] if params.key?(:sent_after)
          query_params["sent_before"] = params[:sent_before] if params.key?(:sent_before)
          query_params["type"] = params[:type] if params.key?(:type)
          query_params["from"] = params[:from] if params.key?(:from)
          query_params["to"] = params[:to] if params.key?(:to)
          query_params["status"] = params[:status] if params.key?(:status)
          query_params["tag"] = params[:tag] if params.key?(:tag)
          query_params["message_type"] = params[:message_type] if params.key?(:message_type)
          query_params["page"] = params[:page] if params.key?(:page)
          query_params["per_page"] = params[:per_page] if params.key?(:per_page)

          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v3/messages",
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
            Wavix::SmsAndMms::Messages::Types::ListMessagesResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Sends an SMS or MMS message. MMS is supported for U.S. numbers only. Track delivery using the returned
        # `message_id` and the message status callback.
        # **Rate limit**: 20 messages per phone number in 24 hours.
        #
        # @param request_options [Hash]
        # @param params [Wavix::SmsAndMms::Messages::Types::SendMessagesRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        #
        # @return [Wavix::Types::SendMessagesResponse]
        def send_(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v3/messages",
            body: Wavix::SmsAndMms::Messages::Types::SendMessagesRequest.new(params).to_h,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Wavix::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Wavix::Types::SendMessagesResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Returns the SMS or MMS message identified by `id`, including its delivery status and content.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :id
        #
        # @return [Wavix::SmsAndMms::Messages::Types::GetMessagesResponse]
        def get(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v3/messages/#{URI.encode_uri_component(params[:id].to_s)}",
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Wavix::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Wavix::SmsAndMms::Messages::Types::GetMessagesResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Streams matching SMS and MMS messages as newline-delimited JSON (NDJSON), one message per line, for bulk
        # export.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String, nil] :sent_after
        # @option params [String, nil] :sent_before
        # @option params [String] :type
        # @option params [String, nil] :from
        # @option params [String, nil] :to
        # @option params [Wavix::Types::MessageDeliveryStatus, nil] :status
        # @option params [String, nil] :tag
        # @option params [Wavix::SmsAndMms::Messages::Types::ListAllMessagesRequestMessageType, nil] :message_type
        #
        # @return [String]
        def list_all(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          query_params = {}
          query_params["sent_after"] = params[:sent_after] if params.key?(:sent_after)
          query_params["sent_before"] = params[:sent_before] if params.key?(:sent_before)
          query_params["type"] = params[:type] if params.key?(:type)
          query_params["from"] = params[:from] if params.key?(:from)
          query_params["to"] = params[:to] if params.key?(:to)
          query_params["status"] = params[:status] if params.key?(:status)
          query_params["tag"] = params[:tag] if params.key?(:tag)
          query_params["message_type"] = params[:message_type] if params.key?(:message_type)

          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v3/messages/all",
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
      end
    end
  end
end
