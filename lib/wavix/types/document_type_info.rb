# frozen_string_literal: true

module Wavix
  module Types
    # Document type required to activate a phone number.
    class DocumentTypeInfo < Internal::Types::Model
      field :id, -> { Integer }, optional: false, nullable: false

      field :name, -> { Wavix::Types::DocumentType }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
