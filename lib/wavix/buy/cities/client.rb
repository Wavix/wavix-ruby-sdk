# frozen_string_literal: true

module Wavix
  module Buy
    module Cities
      class Client
        # @param client [Wavix::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Returns a list of cities for countries where
        #  `has_provinces_or_states` is `false`.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [Integer] :country_id
        # @option params [Boolean, nil] :text_enabled_only
        #
        # @return [Wavix::Buy::Cities::Types::ListCitiesResponse]
        def list(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          query_params = {}
          query_params["text_enabled_only"] = params[:text_enabled_only] if params.key?(:text_enabled_only)

          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v1/buy/countries/#{URI.encode_uri_component(params[:country_id].to_s)}/cities",
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
            Wavix::Buy::Cities::Types::ListCitiesResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
