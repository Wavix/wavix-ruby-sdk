# frozen_string_literal: true

module Wavix
  module SpeechAnalytics
    class Client
      # @param client [Wavix::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Uploads an audio file for transcription. Transcription is asynchronous; Wavix sends a POST callback to
      # `callback_url` when it completes, including the `request_id` returned by this request.
      #
      # Callback body:
      # ```json
      #    {
      #         "request_id": "e865ea07-25af-4fdd-876e-04b0d41d5ebd",
      #         "status": "completed",
      #         "error": null
      #    }
      # ```
      #
      # - `request_id`: ID of the transcription request.
      # - `status`: One of `completed` (transcription succeeded) or `failed` (transcription encountered an error).
      # - `error`: Error description, or `null` when the transcription succeeded.
      #
      # @param request_options [Hash]
      # @param params [void]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Wavix::SpeechAnalytics::Types::CreateSpeechAnalyticsResponse]
      def create(request_options: {}, **params)
        params = Wavix::Internal::Types::Utils.normalize_keys(params)
        body = Internal::Multipart::FormData.new

        body.add_part(params[:file].to_form_data_part(name: "file")) if params[:file]
        if params[:callback_url]
          body.add(
            name: "callback_url",
            value: params[:callback_url]
          )
        end
        if params[:insights]
          body.add(
            name: "insights",
            value: params[:insights]
          )
        end

        request = Wavix::Internal::Multipart::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/speech-analytics",
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
          Wavix::SpeechAnalytics::Types::CreateSpeechAnalyticsResponse.load(response.body)
        else
          error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns the transcription for the request identified by `request_id`, including transcript, speaker turns, and
      # insights when available.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :request_id
      #
      # @return [Wavix::SpeechAnalytics::Types::GetSpeechAnalyticsResponse]
      def get(request_options: {}, **params)
        params = Wavix::Internal::Types::Utils.normalize_keys(params)
        request = Wavix::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/speech-analytics/#{URI.encode_uri_component(params[:request_id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Wavix::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Wavix::SpeechAnalytics::Types::GetSpeechAnalyticsResponse.load(response.body)
        else
          error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Re-runs transcription on the file identified by `request_id`, replacing the existing transcript.
      #
      # @param request_options [Hash]
      # @param params [Wavix::SpeechAnalytics::Types::SpeechAnalyticsRetranscribeRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :request_id
      #
      # @return [Wavix::Types::SuccessResponse]
      def retranscribe(request_options: {}, **params)
        params = Wavix::Internal::Types::Utils.normalize_keys(params)
        request_data = Wavix::SpeechAnalytics::Types::SpeechAnalyticsRetranscribeRequest.new(params).to_h
        non_body_param_names = %w[request_id]
        body = request_data.except(*non_body_param_names)

        request = Wavix::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "v1/speech-analytics/#{URI.encode_uri_component(params[:request_id].to_s)}",
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

      # @return [Wavix::File::Client]
      def file
        @file ||= Wavix::SpeechAnalytics::File::Client.new(client: @client)
      end
    end
  end
end
