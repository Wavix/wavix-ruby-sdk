# frozen_string_literal: true

module Wavix
  module Numbers
    module Papers
      class Client
        # @param client [Wavix::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Uploads a verification document for one or more phone numbers.
        # Uploaded files must meet the following requirements:
        # - Allowed formats: PNG, JPG, JPEG, TIFF, BMP, or PDF
        # - Maximum file size: 10 MB
        # - Files can't be password protected
        # - PDF files must not contain digital signatures
        #
        # @param request_options [Hash]
        # @param params [void]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        #
        # @return [Array[Wavix::Types::NumberDocument]]
        def upload(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          body = Internal::Multipart::FormData.new

          if params[:did_ids]
            body.add(
              name: "did_ids",
              value: params[:did_ids]
            )
          end
          body.add_part(params[:doc_attachment].to_form_data_part(name: "doc_attachment")) if params[:doc_attachment]
          if params[:doc_id]
            body.add(
              name: "doc_id",
              value: params[:doc_id]
            )
          end

          request = Wavix::Internal::Multipart::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v1/numbers/papers",
            body: body,
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
      end
    end
  end
end
