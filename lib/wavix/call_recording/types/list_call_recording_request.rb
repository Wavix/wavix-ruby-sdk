# frozen_string_literal: true

module Wavix
  module CallRecording
    module Types
      class ListCallRecordingRequest < Internal::Types::Model
        field :from_date, -> { String }, optional: true, nullable: false

        field :to_date, -> { String }, optional: true, nullable: false

        field :from, -> { String }, optional: true, nullable: false

        field :to, -> { String }, optional: true, nullable: false

        field :call_uuid, -> { String }, optional: true, nullable: false

        field :sip_trunks, -> { String }, optional: true, nullable: false

        field :page, -> { Integer }, optional: true, nullable: false

        field :per_page, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
