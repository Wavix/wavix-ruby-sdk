# frozen_string_literal: true

module Wavix
  module TenDlc
    module Campaigns
      class Client
        # @param client [Wavix::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Returns a paginated list of 10DLC Campaigns for the authenticated account, filtered by date, status, and use
        # case.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String, nil] :name
        # @option params [String, nil] :usecase
        # @option params [String, nil] :status
        # @option params [Boolean, nil] :mock
        # @option params [String, nil] :created_before
        # @option params [String, nil] :created_after
        # @option params [Integer, nil] :page
        # @option params [Integer, nil] :per_page
        #
        # @return [Wavix::TenDlc::Campaigns::Types::ListCampaignsResponse]
        def list(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          query_params = {}
          query_params["name"] = params[:name] if params.key?(:name)
          query_params["usecase"] = params[:usecase] if params.key?(:usecase)
          query_params["status"] = params[:status] if params.key?(:status)
          query_params["mock"] = params[:mock] if params.key?(:mock)
          query_params["created_before"] = params[:created_before] if params.key?(:created_before)
          query_params["created_after"] = params[:created_after] if params.key?(:created_after)
          query_params["page"] = params[:page] if params.key?(:page)
          query_params["per_page"] = params[:per_page] if params.key?(:per_page)

          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v3/10dlc/brands/campaigns",
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
            Wavix::TenDlc::Campaigns::Types::ListCampaignsResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Returns a paginated list of 10DLC Campaigns associated with the 10DLC Brand identified by `brand_id`.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :brand_id
        # @option params [String, nil] :name
        # @option params [String, nil] :usecase
        # @option params [String, nil] :status
        # @option params [Boolean, nil] :mock
        # @option params [String, nil] :created_before
        # @option params [String, nil] :created_after
        # @option params [Integer, nil] :page
        # @option params [Integer, nil] :per_page
        #
        # @return [Wavix::TenDlc::Campaigns::Types::ListByBrandCampaignsResponse]
        def list_by_brand(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          query_params = {}
          query_params["name"] = params[:name] if params.key?(:name)
          query_params["usecase"] = params[:usecase] if params.key?(:usecase)
          query_params["status"] = params[:status] if params.key?(:status)
          query_params["mock"] = params[:mock] if params.key?(:mock)
          query_params["created_before"] = params[:created_before] if params.key?(:created_before)
          query_params["created_after"] = params[:created_after] if params.key?(:created_after)
          query_params["page"] = params[:page] if params.key?(:page)
          query_params["per_page"] = params[:per_page] if params.key?(:per_page)

          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v3/10dlc/brands/#{URI.encode_uri_component(params[:brand_id].to_s)}/campaigns",
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
            Wavix::TenDlc::Campaigns::Types::ListByBrandCampaignsResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Registers a 10DLC Campaign under the 10DLC Brand identified by `brand_id`. The Brand must have a verified
        # identity status.
        #
        # @param request_options [Hash]
        # @param params [Wavix::TenDlc::Campaigns::Types::TenDlcCampaignCreateRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :brand_id
        #
        # @return [Wavix::TenDlc::Campaigns::Types::CreateCampaignsResponse]
        def create(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request_data = Wavix::TenDlc::Campaigns::Types::TenDlcCampaignCreateRequest.new(params).to_h
          non_body_param_names = %w[brand_id]
          body = request_data.except(*non_body_param_names)

          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v3/10dlc/brands/#{URI.encode_uri_component(params[:brand_id].to_s)}/campaigns",
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
            Wavix::TenDlc::Campaigns::Types::CreateCampaignsResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Returns the 10DLC Campaign identified by `campaign_id` under the Brand identified by `brand_id`.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :brand_id
        # @option params [String] :campaign_id
        #
        # @return [Wavix::TenDlc::Campaigns::Types::GetCampaignsResponse]
        def get(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v3/10dlc/brands/#{URI.encode_uri_component(params[:brand_id].to_s)}/campaigns/#{URI.encode_uri_component(params[:campaign_id].to_s)}",
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Wavix::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Wavix::TenDlc::Campaigns::Types::GetCampaignsResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Updates the 10DLC Campaign identified by `campaign_id`. Only the provided fields are changed.
        #
        # @param request_options [Hash]
        # @param params [Wavix::TenDlc::Campaigns::Types::TenDlcCampaignUpdateRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :brand_id
        # @option params [String] :campaign_id
        #
        # @return [Wavix::TenDlc::Campaigns::Types::UpdateCampaignsResponse]
        def update(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request_data = Wavix::TenDlc::Campaigns::Types::TenDlcCampaignUpdateRequest.new(params).to_h
          non_body_param_names = %w[brand_id campaign_id]
          body = request_data.except(*non_body_param_names)

          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "PUT",
            path: "v3/10dlc/brands/#{URI.encode_uri_component(params[:brand_id].to_s)}/campaigns/#{URI.encode_uri_component(params[:campaign_id].to_s)}",
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
            Wavix::TenDlc::Campaigns::Types::UpdateCampaignsResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Deletes a 10DLC Campaign. Associated phone numbers cannot be used as Sender IDs once the Campaign is deleted.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :brand_id
        # @option params [String] :campaign_id
        #
        # @return [Wavix::TenDlc::Campaigns::Types::DeleteCampaignsResponse]
        def delete(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "DELETE",
            path: "v3/10dlc/brands/#{URI.encode_uri_component(params[:brand_id].to_s)}/campaigns/#{URI.encode_uri_component(params[:campaign_id].to_s)}",
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Wavix::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Wavix::TenDlc::Campaigns::Types::DeleteCampaignsResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Requests action on a pending or rejected 10DLC Campaign. Use `nudge_intent` to specify the action:
        # - `REVIEW`: Request review for a pending Campaign. - `APPEAL_REJECTION`: Appeal a rejected Campaign.
        # Note:
        # - The Campaign must be at least 72 hours old.
        # - Only one nudge request per Campaign is allowed every 24 hours.
        #
        # @param request_options [Hash]
        # @param params [Wavix::TenDlc::Campaigns::Types::NudgeCampaignsRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :brand_id
        # @option params [String] :campaign_id
        #
        # @return [Wavix::Types::SuccessResponse]
        def nudge(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request_data = Wavix::TenDlc::Campaigns::Types::NudgeCampaignsRequest.new(params).to_h
          non_body_param_names = %w[brand_id campaign_id]
          body = request_data.except(*non_body_param_names)

          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v3/10dlc/brands/#{URI.encode_uri_component(params[:brand_id].to_s)}/campaigns/#{URI.encode_uri_component(params[:campaign_id].to_s)}/nudge",
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
      end
    end
  end
end
