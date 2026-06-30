# frozen_string_literal: true

module Wavix
  module TenDlc
    module Campaigns
      module Types
        # Represents a 10DLC campaign registered under a Brand. A Campaign defines the messaging use case, opt-in and
        # opt-out flows, and the phone numbers permitted to send its traffic.
        class GetCampaignsResponse < Internal::Types::Model
          field :affiliate_marketing, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :age_gated, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :auto_renewal, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :last_bill_date, -> { String }, optional: false, nullable: true

          field :next_bill_date, -> { String }, optional: false, nullable: true

          field :direct_lending, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :embedded_links, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :embedded_phones, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :embedded_link_sample, -> { String }, optional: false, nullable: true

          field :brand_id, -> { String }, optional: false, nullable: false

          field :campaign_id, -> { String }, optional: false, nullable: false

          field :description, -> { String }, optional: false, nullable: true

          field :optin_workflow, -> { String }, optional: false, nullable: true

          field :feedback, -> { String }, optional: false, nullable: true

          field :help, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :help_keywords, -> { String }, optional: false, nullable: false

          field :help_message, -> { String }, optional: false, nullable: true

          field :optin, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :optin_keywords, -> { String }, optional: false, nullable: false

          field :optin_message, -> { String }, optional: false, nullable: true

          field :optout, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :optout_keywords, -> { String }, optional: false, nullable: false

          field :optout_message, -> { String }, optional: false, nullable: true

          field :name, -> { String }, optional: false, nullable: false

          field :created_at, -> { String }, optional: false, nullable: false

          field :sample1, -> { String }, optional: false, nullable: true

          field :sample2, -> { String }, optional: false, nullable: true

          field :sample3, -> { String }, optional: false, nullable: true

          field :sample4, -> { String }, optional: false, nullable: true

          field :sample5, -> { String }, optional: false, nullable: true

          field :updated_at, -> { String }, optional: false, nullable: false

          field :mock, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :usecase, -> { String }, optional: false, nullable: false

          field :monthly_fee, -> { String }, optional: false, nullable: false

          field :privacy_policy, -> { String }, optional: false, nullable: true

          field :terms_conditions, -> { String }, optional: false, nullable: true

          field :status, -> { String }, optional: false, nullable: false

          field :phone_numbers, -> { Internal::Types::Array[String] }, optional: false, nullable: false
        end
      end
    end
  end
end
