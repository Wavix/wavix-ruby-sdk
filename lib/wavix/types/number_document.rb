# frozen_string_literal: true

module Wavix
  module Types
    # A document uploaded for a phone number
    class NumberDocument < Internal::Types::Model
      field :id, -> { Integer }, optional: false, nullable: false

      field :allow_replace, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :did_number, -> { String }, optional: false, nullable: false

      field :doc_content_type, -> { String }, optional: false, nullable: false

      field :doc_file_name, -> { String }, optional: false, nullable: false

      field :doc_type_id, -> { Integer }, optional: false, nullable: false

      field :status, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: false
    end
  end
end
