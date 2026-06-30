# frozen_string_literal: true

module Wavix
  module Cdrs
    module Types
      class CdrSearchRequest < Internal::Types::Model
        field :type, -> { Wavix::Cdrs::Types::CdrSearchRequestType }, optional: false, nullable: false

        field :from, -> { String }, optional: false, nullable: false

        field :to, -> { String }, optional: false, nullable: false

        field :from_search, -> { String }, optional: true, nullable: false

        field :to_search, -> { String }, optional: true, nullable: false

        field :sip_trunk, -> { String }, optional: true, nullable: false

        field :min_duration, -> { Integer }, optional: true, nullable: false

        field :transcription, -> { Wavix::Types::TranscriptionFilter }, optional: true, nullable: false

        field :uuid, -> { String }, optional: true, nullable: false

        field :disposition, -> { Wavix::Cdrs::Types::CdrSearchRequestDisposition }, optional: true, nullable: false

        field :page, -> { Integer }, optional: false, nullable: false

        field :per_page, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
