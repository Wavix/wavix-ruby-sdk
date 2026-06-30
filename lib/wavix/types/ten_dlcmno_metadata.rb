# frozen_string_literal: true

module Wavix
  module Types
    # Represents per-MNO 10DLC requirements and throughput limits that apply to a campaign use case.
    class TenDlcmnoMetadata < Internal::Types::Model
      field :att_mms_tpm, -> { Integer }, optional: false, nullable: true

      field :att_msg_class, -> { String }, optional: false, nullable: true

      field :att_sms_tpm, -> { Integer }, optional: false, nullable: true

      field :att_tpm_scope, -> { String }, optional: false, nullable: true

      field :help_required, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :optin_required, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :optout_required, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :min_msg_samples, -> { Integer }, optional: false, nullable: false

      field :mno, -> { String }, optional: false, nullable: false

      field :mno_qualify, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :mno_review, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :mno_support, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :no_embedded_links, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :no_embedded_phone, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :tmobile_brand_dcap, -> { Integer }, optional: false, nullable: true

      field :tmobile_brand_tier, -> { String }, optional: false, nullable: true
    end
  end
end
