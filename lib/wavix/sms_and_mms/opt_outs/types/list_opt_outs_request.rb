# frozen_string_literal: true

module Wavix
  module SmsAndMms
    module OptOuts
      module Types
        class ListOptOutsRequest < Internal::Types::Model
          field :sender_id, -> { String }, optional: true, nullable: false

          field :campaign_id, -> { String }, optional: true, nullable: false

          field :created_after, -> { String }, optional: true, nullable: false

          field :created_before, -> { String }, optional: true, nullable: false

          field :page, -> { Integer }, optional: true, nullable: false

          field :per_page, -> { Integer }, optional: true, nullable: false
        end
      end
    end
  end
end
