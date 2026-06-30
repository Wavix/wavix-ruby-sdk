# frozen_string_literal: true

module Wavix
  module Cdrs
    module Types
      class ListCdrsRequest < Internal::Types::Model
        field :from, -> { String }, optional: false, nullable: false

        field :to, -> { String }, optional: false, nullable: false

        field :type, -> { String }, optional: false, nullable: false

        field :disposition, -> { Wavix::Types::CallDisposition }, optional: true, nullable: false

        field :from_search, -> { String }, optional: true, nullable: false

        field :to_search, -> { String }, optional: true, nullable: false

        field :sip_trunk, -> { String }, optional: true, nullable: false

        field :uuid, -> { String }, optional: true, nullable: false

        field :page, -> { Integer }, optional: true, nullable: false

        field :per_page, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
