# frozen_string_literal: true

module Wavix
  module Types
    # Represents an appeal against a 10DLC brand vetting result. An appeal asks the vetting provider to reconsider the
    # assigned score.
    class TenDlcBrandVettingAppeal < Internal::Types::Model
      field :appeal_outcome, -> { Wavix::Types::TenDlcBrandVettingAppealAppealOutcome }, optional: false, nullable: false

      field :appeal_status, -> { String }, optional: false, nullable: false

      field :appeal_status_update_date, -> { String }, optional: false, nullable: false

      field :attachment_uuid_list, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :brand_id, -> { String }, optional: false, nullable: false

      field :category_list, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :create_date, -> { String }, optional: false, nullable: false

      field :explanation, -> { String }, optional: false, nullable: false

      field :evp_id, -> { String }, optional: false, nullable: false

      field :vetting_class, -> { String }, optional: false, nullable: false

      field :vetting_id, -> { String }, optional: false, nullable: false
    end
  end
end
