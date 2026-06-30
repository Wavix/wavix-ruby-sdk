# frozen_string_literal: true

module Wavix
  module Types
    class TenDlcBrandAppeal < Internal::Types::Model
      field :categories, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :evidence, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :outcome, -> { Wavix::Types::TenDlcBrandAppealOutcome }, optional: false, nullable: false

      field :status, -> { String }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false

      field :explanation, -> { String }, optional: false, nullable: false
    end
  end
end
