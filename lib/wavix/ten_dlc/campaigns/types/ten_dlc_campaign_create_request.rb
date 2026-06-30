# frozen_string_literal: true

module Wavix
  module TenDlc
    module Campaigns
      module Types
        class TenDlcCampaignCreateRequest < Internal::Types::Model
          field :brand_id, -> { String }, optional: false, nullable: false

          field :affiliate_marketing, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :age_gated, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :auto_renewal, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :direct_lending, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :embedded_links, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :embedded_phones, -> { Internal::Types::Boolean }, optional: false, nullable: true

          field :embedded_link_sample, -> { String }, optional: false, nullable: true

          field :description, -> { String }, optional: false, nullable: false

          field :optin_workflow, -> { String }, optional: false, nullable: false

          field :help, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :help_keywords, -> { String }, optional: false, nullable: false

          field :help_message, -> { String }, optional: false, nullable: false

          field :optin, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :optin_keywords, -> { String }, optional: false, nullable: false

          field :optin_message, -> { String }, optional: false, nullable: false

          field :optout, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :optout_keywords, -> { String }, optional: false, nullable: false

          field :optout_message, -> { String }, optional: false, nullable: false

          field :name, -> { String }, optional: false, nullable: false

          field :sample1, -> { String }, optional: false, nullable: false

          field :sample2, -> { String }, optional: false, nullable: true

          field :sample3, -> { String }, optional: false, nullable: true

          field :sample4, -> { String }, optional: false, nullable: true

          field :sample5, -> { String }, optional: false, nullable: true

          field :mock, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :usecase, -> { String }, optional: false, nullable: false

          field :privacy_policy, -> { String }, optional: true, nullable: false

          field :terms_conditions, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
