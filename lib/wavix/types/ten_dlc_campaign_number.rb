# frozen_string_literal: true

module Wavix
  module Types
    class TenDlcCampaignNumber < Internal::Types::Model
      field :number, -> { String }, optional: false, nullable: false

      field :status, -> { String }, optional: false, nullable: false
    end
  end
end
