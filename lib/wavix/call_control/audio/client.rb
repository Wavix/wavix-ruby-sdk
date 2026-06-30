# frozen_string_literal: true

module Wavix
  module CallControl
    module Audio
      class Client
        # @param client [Wavix::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Plays an audio prompt into the active call identified by `id`.
        #
        # @param request_options [Hash]
        # @param params [Wavix::CallControl::Audio::Types::CallAudioPlayRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :id
        #
        # @return [Wavix::Types::SuccessResponse]
        def play(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request_data = Wavix::CallControl::Audio::Types::CallAudioPlayRequest.new(params).to_h
          non_body_param_names = %w[id]
          body = request_data.except(*non_body_param_names)

          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v1/calls/#{URI.encode_uri_component(params[:id].to_s)}/play",
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

        # Stops audio playback in the active call identified by `id`.
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
        # @return [Wavix::Types::SuccessResponse]
        def stop(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "DELETE",
            path: "v1/calls/#{URI.encode_uri_component(params[:id].to_s)}/audio",
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
end
