# frozen_string_literal: true

module Wavix
  module Cdrs
    class Client
      # @param client [Wavix::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Returns a paginated list of call detail records for the authenticated account, within the requested date range.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :from
      # @option params [String] :to
      # @option params [String] :type
      # @option params [Wavix::Types::CallDisposition, nil] :disposition
      # @option params [String, nil] :from_search
      # @option params [String, nil] :to_search
      # @option params [String, nil] :sip_trunk
      # @option params [String, nil] :uuid
      # @option params [Integer, nil] :page
      # @option params [Integer, nil] :per_page
      #
      # @return [Wavix::Types::CdrListResponse]
      def list(request_options: {}, **params)
        params = Wavix::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["from"] = params[:from] if params.key?(:from)
        query_params["to"] = params[:to] if params.key?(:to)
        query_params["type"] = params[:type] if params.key?(:type)
        query_params["disposition"] = params[:disposition] if params.key?(:disposition)
        query_params["from_search"] = params[:from_search] if params.key?(:from_search)
        query_params["to_search"] = params[:to_search] if params.key?(:to_search)
        query_params["sip_trunk"] = params[:sip_trunk] if params.key?(:sip_trunk)
        query_params["uuid"] = params[:uuid] if params.key?(:uuid)
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["per_page"] = params[:per_page] if params.key?(:per_page)

        request = Wavix::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/cdrs",
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
          Wavix::Types::CdrListResponse.load(response.body)
        else
          error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Searches call transcriptions for the given keywords or phrases and returns the matching CDRs with their
      # transcriptions.
      #
      # @param request_options [Hash]
      # @param params [Wavix::Cdrs::Types::CdrSearchRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Wavix::Types::CdrTranscriptionSearchResponse]
      def search(request_options: {}, **params)
        params = Wavix::Internal::Types::Utils.normalize_keys(params)
        request = Wavix::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/cdrs",
          body: Wavix::Cdrs::Types::CdrSearchRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Wavix::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Wavix::Types::CdrTranscriptionSearchResponse.load(response.body)
        else
          error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Transcribes the recording of the call identified by `call_id`. Transcription is asynchronous; poll the
      # transcription endpoint for the result.
      #
      # @param request_options [Hash]
      # @param params [Wavix::Cdrs::Types::CdrRetranscriptionRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :call_id
      #
      # @return [Wavix::Types::SuccessResponse]
      def retranscribe(request_options: {}, **params)
        params = Wavix::Internal::Types::Utils.normalize_keys(params)
        request_data = Wavix::Cdrs::Types::CdrRetranscriptionRequest.new(params).to_h
        non_body_param_names = %w[call_id]
        body = request_data.except(*non_body_param_names)

        request = Wavix::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "v1/cdrs/#{URI.encode_uri_component(params[:call_id].to_s)}/retranscribe",
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
          Wavix::Types::SuccessResponse.load(response.body)
        else
          error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns the transcription of the recorded call identified by `call_id`. Alias of the `transcription` endpoint.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :call_id
      #
      # @return [Wavix::Types::CdrTranscriptionResponse]
      def transcriptions(request_options: {}, **params)
        params = Wavix::Internal::Types::Utils.normalize_keys(params)
        request = Wavix::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/cdrs/#{URI.encode_uri_component(params[:call_id].to_s)}/transcriptions",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Wavix::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Wavix::Types::CdrTranscriptionResponse.load(response.body)
        else
          error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns the call detail record for the call identified by `call_id`.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :call_id
      # @option params [Boolean, nil] :show_transcription
      #
      # @return [Wavix::Types::CdrResponse]
      def get(request_options: {}, **params)
        params = Wavix::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["show_transcription"] = params[:show_transcription] if params.key?(:show_transcription)

        request = Wavix::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/cdrs/#{URI.encode_uri_component(params[:call_id].to_s)}",
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
          Wavix::Types::CdrResponse.load(response.body)
        else
          error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Streams matching call detail records as newline-delimited JSON (NDJSON), one record per line, for bulk export.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :from
      # @option params [String] :to
      # @option params [String] :type
      # @option params [Wavix::Types::CallDisposition, nil] :disposition
      # @option params [String, nil] :from_search
      # @option params [String, nil] :to_search
      # @option params [String, nil] :sip_trunk
      # @option params [String, nil] :uuid
      # @option params [Integer, nil] :page
      # @option params [Integer, nil] :per_page
      #
      # @return [String]
      def list_all(request_options: {}, **params)
        params = Wavix::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["from"] = params[:from] if params.key?(:from)
        query_params["to"] = params[:to] if params.key?(:to)
        query_params["type"] = params[:type] if params.key?(:type)
        query_params["disposition"] = params[:disposition] if params.key?(:disposition)
        query_params["from_search"] = params[:from_search] if params.key?(:from_search)
        query_params["to_search"] = params[:to_search] if params.key?(:to_search)
        query_params["sip_trunk"] = params[:sip_trunk] if params.key?(:sip_trunk)
        query_params["uuid"] = params[:uuid] if params.key?(:uuid)
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["per_page"] = params[:per_page] if params.key?(:per_page)

        request = Wavix::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/cdrs/all",
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

      # @return [Wavix::Transcription::Client]
      def transcription
        @transcription ||= Wavix::Cdrs::Transcription::Client.new(client: @client)
      end
    end
  end
end
