# frozen_string_literal: true

module Wavix
  module Numbers
    class Client
      # @param client [Wavix::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Returns a paginated list of the phone numbers owned by the authenticated account.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer, nil] :city_id
      # @option params [String, nil] :search
      # @option params [String, nil] :label
      # @option params [Boolean, nil] :label_present
      # @option params [Integer, nil] :page
      # @option params [Integer, nil] :per_page
      #
      # @return [Wavix::Types::NumberListResponse]
      def list(request_options: {}, **params)
        params = Wavix::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["city_id"] = params[:city_id] if params.key?(:city_id)
        query_params["search"] = params[:search] if params.key?(:search)
        query_params["label"] = params[:label] if params.key?(:label)
        query_params["label_present"] = params[:label_present] if params.key?(:label_present)
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["per_page"] = params[:per_page] if params.key?(:per_page)

        request = Wavix::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/numbers",
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
          Wavix::Types::NumberListResponse.load(response.body)
        else
          error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Releases the listed phone numbers back to stock. Selection accepts either `ids` (record IDs) or `dids` (phone
      # numbers), but not both.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer, nil] :ids
      # @option params [String, nil] :dids
      #
      # @return [Wavix::Numbers::Types::DeleteNumbersResponse]
      def delete(request_options: {}, **params)
        params = Wavix::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["ids"] = params[:ids] if params.key?(:ids)
        query_params["dids"] = params[:dids] if params.key?(:dids)

        request = Wavix::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "v1/numbers",
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
          Wavix::Numbers::Types::DeleteNumbersResponse.load(response.body)
        else
          error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Applies the same changes to every listed phone number. Only the provided fields are changed. Destination and SMS
      # callback changes are applied asynchronously and may not be reflected in the response immediately.
      #
      # @param request_options [Hash]
      # @param params [Wavix::Numbers::Types::NumberBulkUpdateRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Wavix::Numbers::Types::BulkUpdateNumbersResponse]
      def bulk_update(request_options: {}, **params)
        params = Wavix::Internal::Types::Utils.normalize_keys(params)
        request = Wavix::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "v1/numbers",
          body: Wavix::Numbers::Types::NumberBulkUpdateRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Wavix::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Wavix::Numbers::Types::BulkUpdateNumbersResponse.load(response.body)
        else
          error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns the phone number identified by `id`, including its destinations, documents, and feature settings.
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
      # @return [Wavix::Types::Number]
      def get(request_options: {}, **params)
        params = Wavix::Internal::Types::Utils.normalize_keys(params)
        request = Wavix::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/numbers/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Wavix::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Wavix::Types::Number.load(response.body)
        else
          error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates the phone number identified by `id`. Only the provided fields are changed.
      #
      # @param request_options [Hash]
      # @param params [Wavix::Numbers::Types::NumberUpdateRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id
      #
      # @return [Wavix::Types::Number]
      def update(request_options: {}, **params)
        params = Wavix::Internal::Types::Utils.normalize_keys(params)
        request_data = Wavix::Numbers::Types::NumberUpdateRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Wavix::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "v1/numbers/#{URI.encode_uri_component(params[:id].to_s)}",
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
          Wavix::Types::Number.load(response.body)
        else
          error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @return [Wavix::Papers::Client]
      def papers
        @papers ||= Wavix::Numbers::Papers::Client.new(client: @client)
      end
    end
  end
end
