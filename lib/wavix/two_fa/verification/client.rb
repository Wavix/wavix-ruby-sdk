# frozen_string_literal: true

module Wavix
  module TwoFa
    module Verification
      class Client
        # @param client [Wavix::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Creates a 2FA verification and sends a one-time password (OTP) to the destination phone number over the
        # selected channel. Requires a 2FA service configured in the Wavix portal; the service is reused to generate and
        # validate OTPs.
        #
        # The verification proceeds through three steps:
        # 1. Create a verification to generate and send an OTP.
        # 2. Resend the OTP on the same verification if needed.
        # 3. Validate the OTP through the check endpoint.
        #
        # @param request_options [Hash]
        # @param params [Wavix::TwoFa::Verification::Types::TwoFactorVerificationCreateRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        #
        # @return [Wavix::TwoFa::Verification::Types::CreateVerificationResponse]
        def create(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v1/two-fa/verification",
            body: Wavix::TwoFa::Verification::Types::TwoFactorVerificationCreateRequest.new(params).to_h,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Wavix::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Wavix::TwoFa::Verification::Types::CreateVerificationResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Resends the OTP for the verification identified by `session_id` over the specified channel. Previously sent
        # codes are invalidated.
        #
        # @param request_options [Hash]
        # @param params [Wavix::TwoFa::Verification::Types::TwoFactorVerificationResendRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :session_id
        #
        # @return [Wavix::TwoFa::Verification::Types::ResendVerificationResponse]
        def resend(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request_data = Wavix::TwoFa::Verification::Types::TwoFactorVerificationResendRequest.new(params).to_h
          non_body_param_names = %w[session_id]
          body = request_data.except(*non_body_param_names)

          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v1/two-fa/verification/#{URI.encode_uri_component(params[:session_id].to_s)}",
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
            Wavix::TwoFa::Verification::Types::ResendVerificationResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Validates the OTP submitted by the end user against the verification identified by `session_id`.
        #
        # @param request_options [Hash]
        # @param params [Wavix::TwoFa::Verification::Types::TwoFactorVerificationCheckRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :session_id
        #
        # @return [Wavix::TwoFa::Verification::Types::CheckVerificationResponse]
        def check(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request_data = Wavix::TwoFa::Verification::Types::TwoFactorVerificationCheckRequest.new(params).to_h
          non_body_param_names = %w[session_id]
          body = request_data.except(*non_body_param_names)

          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "v1/two-fa/verification/#{URI.encode_uri_component(params[:session_id].to_s)}/check",
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
            Wavix::TwoFa::Verification::Types::CheckVerificationResponse.load(response.body)
          else
            error_class = Wavix::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Cancels the 2FA verification identified by `session_id`. No further codes are sent, and previously sent codes
        # can no longer be validated. A new verification is required to send another code.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :session_id
        #
        # @return [Wavix::Types::SuccessResponse]
        def cancel(request_options: {}, **params)
          params = Wavix::Internal::Types::Utils.normalize_keys(params)
          request = Wavix::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "PATCH",
            path: "v1/two-fa/verification/#{URI.encode_uri_component(params[:session_id].to_s)}/cancel",
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
