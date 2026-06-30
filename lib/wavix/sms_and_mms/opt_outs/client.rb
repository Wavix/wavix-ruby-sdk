# frozen_string_literal: true

module Wavix
  module SmsAndMms
    module OptOuts
      class Client
        # @param client [Wavix::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Returns a paginated list of phone numbers that have opted out of receiving messages from the authenticated
        # account.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String, nil] :sender_id
        # @option params [String, nil] :campaign_id
        # @option params [String, nil] :created_after
        # @option params [String, nil] :created_before
        # @option params [Integer, nil] :page
        # @option params [Integer, nil] :per_page
        #
        # @return [Wavix::Types::OptOutsListResponse]
        def list(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          query_params = {}
          query_params["sender_id"] = params[:sender_id] if params.key?(:sender_id)
          query_params["campaign_id"] = params[:campaign_id] if params.key?(:campaign_id)
          query_params["created_after"] = params[:created_after] if params.key?(:created_after)
          query_params["created_before"] = params[:created_before] if params.key?(:created_before)
          query_params["page"] = params[:page] if params.key?(:page)
          query_params["per_page"] = params[:per_page] if params.key?(:per_page)

          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v3/messages/opt-outs",
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
            Wavix::Types::OptOutsListResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Opts a phone number out of receiving messages from a Sender ID, a 10DLC campaign, or all outbound messages.
        #
        # @param request_options [Hash]
        # @param params [Wavix::SmsAndMms::OptOuts::Types::OptOutCreateRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        #
        # @return [Wavix::SmsAndMms::OptOuts::Types::CreateOptOutsResponse]
        def create(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v3/messages/opt-outs",
            body: Wavix::SmsAndMms::OptOuts::Types::OptOutCreateRequest.new(params).to_h,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Wavix::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Wavix::SmsAndMms::OptOuts::Types::CreateOptOutsResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
