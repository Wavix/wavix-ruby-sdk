# frozen_string_literal: true

module Wavix
  module Billing
    module Transactions
      class Client
        # @param client [Wavix::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Returns a paginated list of billing transactions for the authenticated account within the requested date
        # range.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :from_date
        # @option params [String] :to_date
        # @option params [Integer, nil] :type
        # @option params [String, nil] :details_contains
        # @option params [Boolean, nil] :payments
        # @option params [Integer, nil] :page
        # @option params [Integer, nil] :per_page
        #
        # @return [Wavix::Billing::Transactions::Types::ListTransactionsResponse]
        def list(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          query_params = {}
          query_params["from_date"] = params[:from_date] if params.key?(:from_date)
          query_params["to_date"] = params[:to_date] if params.key?(:to_date)
          query_params["type"] = params[:type] if params.key?(:type)
          query_params["details_contains"] = params[:details_contains] if params.key?(:details_contains)
          query_params["payments"] = params[:payments] if params.key?(:payments)
          query_params["page"] = params[:page] if params.key?(:page)
          query_params["per_page"] = params[:per_page] if params.key?(:per_page)

          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v1/billing/transactions",
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
            Wavix::Billing::Transactions::Types::ListTransactionsResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
