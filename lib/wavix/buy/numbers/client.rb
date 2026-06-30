# frozen_string_literal: true

module Wavix
  module Buy
    module Numbers
      class Client
        # @param client [Wavix::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Returns a paginated list of phone numbers available for purchase in the specified city.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [Integer] :country_id
        # @option params [Integer] :city_id
        # @option params [Boolean, nil] :text_enabled_only
        # @option params [Integer, nil] :page
        # @option params [Integer, nil] :per_page
        #
        # @return [Wavix::Buy::Numbers::Types::ListNumbersResponse]
        def list(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          query_params = {}
          query_params["text_enabled_only"] = params[:text_enabled_only] if params.key?(:text_enabled_only)
          query_params["page"] = params[:page] if params.key?(:page)
          query_params["per_page"] = params[:per_page] if params.key?(:per_page)

          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v1/buy/countries/#{URI.encode_uri_component(params[:country_id].to_s)}/cities/#{URI.encode_uri_component(params[:city_id].to_s)}/dids",
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
            Wavix::Buy::Numbers::Types::ListNumbersResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
