# frozen_string_literal: true

module Wavix
  module Types
    # Represents the result of an external vetting performed on a 10DLC brand. Vetting can raise a Brand's trust score
    # and unlock higher messaging throughput.
    class TenDlcBrandVetting < Internal::Types::Model
      field :evp_id, -> { String }, optional: false, nullable: false

      field :create_date, -> { String }, optional: false, nullable: false

      field :vetting_details, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :vetted_date, -> { String }, optional: false, nullable: true

      field :vetting_id, -> { String }, optional: false, nullable: false

      field :vetting_token, -> { String }, optional: false, nullable: true

      field :vetting_score, -> { Integer }, optional: false, nullable: true

      field :vetting_class, -> { String }, optional: false, nullable: false

      field :vetting_status, -> { String }, optional: false, nullable: false

      field :reasons, -> { Internal::Types::Array[String] }, optional: false, nullable: true
    end
  end
end
