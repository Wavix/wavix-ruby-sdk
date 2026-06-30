# frozen_string_literal: true

module Wavix
  module SmsAndMms
    module SenderIDs
      module Types
        class SenderIDCreateRequest < Internal::Types::Model
          field :sender_id, -> { String }, optional: false, nullable: false

          field :type, -> { Wavix::Types::SenderIDType }, optional: false, nullable: false

          field :countries, -> { Internal::Types::Array[String] }, optional: false, nullable: false

          field :usecase, -> { Wavix::SmsAndMms::SenderIDs::Types::SenderIDCreateRequestUsecase }, optional: false, nullable: false

          field :monthly_volume, -> { Wavix::SmsAndMms::SenderIDs::Types::SenderIDCreateRequestMonthlyVolume }, optional: true, nullable: false

          field :samples, -> { Internal::Types::Array[String] }, optional: true, nullable: false
        end
      end
    end
  end
end
