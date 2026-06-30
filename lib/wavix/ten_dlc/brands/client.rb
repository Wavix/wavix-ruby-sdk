# frozen_string_literal: true

module Wavix
  module TenDlc
    module Brands
      class Client
        # @param client [Wavix::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Returns a paginated list of 10DLC Brands for the authenticated account, filtered by date, name, legal name,
        # and status.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String, nil] :dba_name
        # @option params [String, nil] :company_name
        # @option params [String, nil] :entity_type
        # @option params [String, nil] :status
        # @option params [String, nil] :country
        # @option params [Boolean, nil] :show_deleted
        # @option params [String, nil] :ein_taxid
        # @option params [Boolean, nil] :mock
        # @option params [String, nil] :created_before
        # @option params [String, nil] :created_after
        # @option params [Integer, nil] :page
        # @option params [Integer, nil] :per_page
        #
        # @return [Wavix::TenDlc::Brands::Types::ListBrandsResponse]
        def list(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          query_params = {}
          query_params["dba_name"] = params[:dba_name] if params.key?(:dba_name)
          query_params["company_name"] = params[:company_name] if params.key?(:company_name)
          query_params["entity_type"] = params[:entity_type] if params.key?(:entity_type)
          query_params["status"] = params[:status] if params.key?(:status)
          query_params["country"] = params[:country] if params.key?(:country)
          query_params["show_deleted"] = params[:show_deleted] if params.key?(:show_deleted)
          query_params["ein_taxid"] = params[:ein_taxid] if params.key?(:ein_taxid)
          query_params["mock"] = params[:mock] if params.key?(:mock)
          query_params["created_before"] = params[:created_before] if params.key?(:created_before)
          query_params["created_after"] = params[:created_after] if params.key?(:created_after)
          query_params["page"] = params[:page] if params.key?(:page)
          query_params["per_page"] = params[:per_page] if params.key?(:per_page)

          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v3/10dlc/brands",
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
            Wavix::TenDlc::Brands::Types::ListBrandsResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Registers a 10DLC Brand. TCR automatically verifies the brand identity. Only brands with `VERIFIED` or
        # `VETTED_VERIFIED` identity status can register 10DLC Campaigns.
        #
        # @param request_options [Hash]
        # @param params [Wavix::Types::TenDlcBrandCreateRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        #
        # @return [Wavix::TenDlc::Brands::Types::CreateBrandsResponse]
        def create(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v3/10dlc/brands",
            body: Wavix::Types::TenDlcBrandCreateRequest.new(params).to_h,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Wavix::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Wavix::TenDlc::Brands::Types::CreateBrandsResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Returns the 10DLC Brand identified by `brand_id`.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :brand_id
        #
        # @return [Wavix::TenDlc::Brands::Types::GetBrandsResponse]
        def get(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v3/10dlc/brands/#{URI.encode_uri_component(params[:brand_id].to_s)}",
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Wavix::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Wavix::TenDlc::Brands::Types::GetBrandsResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Updates the 10DLC Brand identified by `brand_id`. Changing identity fields, including `ein_taxid`,
        # `ein_taxid_country`, and `entity_type`, resets the Brand status to `UNVERIFIED` and triggers automatic
        # re-submission. Brands in `VETTED_VERIFIED` status or with active Campaigns cannot be updated.
        #
        # @param request_options [Hash]
        # @param params [Wavix::TenDlc::Brands::Types::TenDlcBrandUpdateRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :brand_id
        #
        # @return [Wavix::TenDlc::Brands::Types::UpdateBrandsResponse]
        def update(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request_data = Wavix::TenDlc::Brands::Types::TenDlcBrandUpdateRequest.new(params).to_h
          non_body_param_names = %w[brand_id]
          body = request_data.except(*non_body_param_names)

          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "PUT",
            path: "v3/10dlc/brands/#{URI.encode_uri_component(params[:brand_id].to_s)}",
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
            Wavix::TenDlc::Brands::Types::UpdateBrandsResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Deletes a 10DLC Brand. Brands with active campaigns cannot be deleted.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :brand_id
        #
        # @return [Wavix::TenDlc::Brands::Types::DeleteBrandsResponse]
        def delete(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "DELETE",
            path: "v3/10dlc/brands/#{URI.encode_uri_component(params[:brand_id].to_s)}",
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Wavix::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Wavix::TenDlc::Brands::Types::DeleteBrandsResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Returns the qualification results for a 10DLC Brand use case. Includes MNO-specific attributes, restrictions,
        # and fees.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :brand_id
        # @option params [Wavix::TenDlc::Brands::Types::QualifyUsecaseBrandsRequestUseCase] :use_case
        #
        # @return [Wavix::TenDlc::Brands::Types::QualifyUsecaseBrandsResponse]
        def qualify_usecase(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v3/10dlc/brands/#{URI.encode_uri_component(params[:brand_id].to_s)}/usecases/#{URI.encode_uri_component(params[:use_case].to_s)}",
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Wavix::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Wavix::TenDlc::Brands::Types::QualifyUsecaseBrandsResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
