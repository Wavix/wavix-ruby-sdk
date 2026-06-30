# frozen_string_literal: true

module Wavix
  module TenDlc
    module Campaigns
      module Types
        class TenDlcCampaignUpdateRequest < Internal::Types::Model
          field :brand_id, -> { String }, optional: false, nullable: false

          field :campaign_id, -> { String }, optional: false, nullable: false

          field :name, -> { String }, optional: true, nullable: false

          field :usecase, -> { Wavix::TenDlc::Campaigns::Types::TenDlcCampaignUpdateRequestUsecase }, optional: true, nullable: false

          field :description, -> { String }, optional: true, nullable: false

          field :embedded_links, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :embedded_phones, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :age_gated, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :direct_lending, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :optin, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :optout, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :help, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :sample1, -> { String }, optional: true, nullable: false

          field :sample2, -> { String }, optional: true, nullable: false

          field :sample3, -> { String }, optional: true, nullable: false

          field :sample4, -> { String }, optional: true, nullable: false

          field :sample5, -> { String }, optional: true, nullable: false

          field :optin_workflow, -> { String }, optional: true, nullable: false

          field :help_message, -> { String }, optional: true, nullable: false

          field :optin_message, -> { String }, optional: true, nullable: false

          field :optout_message, -> { String }, optional: true, nullable: false

          field :auto_renewal, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :optin_keywords, -> { String }, optional: true, nullable: false

          field :help_keywords, -> { String }, optional: true, nullable: false

          field :optout_keywords, -> { String }, optional: true, nullable: false

          field :terms_conditions, -> { String }, optional: true, nullable: false

          field :privacy_policy, -> { String }, optional: true, nullable: false

          field :embedded_link_sample, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
