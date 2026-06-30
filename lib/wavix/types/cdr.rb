# frozen_string_literal: true

module Wavix
  module Types
    # Call detail record (CDR) for an individual call.
    class Cdr < Internal::Types::Model
      field :date, -> { String }, optional: false, nullable: false

      field :from, -> { String }, optional: false, nullable: false

      field :to, -> { String }, optional: false, nullable: false

      field :disposition, -> { Wavix::Types::CallDisposition }, optional: false, nullable: false

      field :duration, -> { Integer }, optional: false, nullable: false

      field :destination, -> { String }, optional: false, nullable: false

      field :per_minute, -> { String }, optional: false, nullable: false

      field :charge, -> { String }, optional: false, nullable: false

      field :sip_trunk, -> { String }, optional: true, nullable: false

      field :forward_fee, -> { String }, optional: true, nullable: false

      field :uuid, -> { String }, optional: false, nullable: false

      field :call_id, -> { String }, optional: false, nullable: false

      field :parent_uuid, -> { String }, optional: true, nullable: false

      field :parent_call_id, -> { String }, optional: true, nullable: false

      field :answered_by, -> { String }, optional: true, nullable: false
    end
  end
end
