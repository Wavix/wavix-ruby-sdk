# frozen_string_literal: true

module Wavix
  module TenDlc
    module BrandEvidence
      class Client
        # @param client [Wavix::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Returns the evidence files uploaded for the 10DLC Brand identified by `brand_id`.
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
        # @return [Wavix::Types::ListBrandEvidenceResponse]
        def list(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v3/10dlc/brands/#{URI.encode_uri_component(params[:brand_id].to_s)}/evidence",
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Wavix::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Wavix::Types::ListBrandEvidenceResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Uploads a supporting evidence file for the 10DLC Brand identified by `brand_id`. Supported formats include
        # `.jpg`, `.png`, and `.pdf`. Maximum size is 10 MB.
        #
        # @param request_options [Hash]
        # @param params [void]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :brand_id
        #
        # @return [Wavix::TenDlc::BrandEvidence::Types::UploadBrandEvidenceResponse]
        def upload(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          body = Internal::Multipart::FormData.new

          body.add_part(params[:file].to_form_data_part(name: "file")) if params[:file]

          request = Wavix::Internal::Multipart::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v3/10dlc/brands/#{URI.encode_uri_component(params[:brand_id].to_s)}/evidence",
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
            Wavix::TenDlc::BrandEvidence::Types::UploadBrandEvidenceResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Returns the Brand evidence file identified by the evidence ID.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :brand_id
        # @option params [String] :id
        #
        # @return [untyped]
        def get(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v3/10dlc/brands/#{URI.encode_uri_component(params[:brand_id].to_s)}/evidence/#{URI.encode_uri_component(params[:id].to_s)}",
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

        # Deletes the Brand evidence file identified by the evidence ID. Deletion is permanent.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :brand_id
        # @option params [String] :id
        #
        # @return [Wavix::TenDlc::BrandEvidence::Types::DeleteBrandEvidenceResponse]
        def delete(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "DELETE",
            path: "v3/10dlc/brands/#{URI.encode_uri_component(params[:brand_id].to_s)}/evidence/#{URI.encode_uri_component(params[:id].to_s)}",
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Wavix::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Wavix::TenDlc::BrandEvidence::Types::DeleteBrandEvidenceResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
