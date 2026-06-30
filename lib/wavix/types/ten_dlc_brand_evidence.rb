# frozen_string_literal: true

module Wavix
  module Types
    class TenDlcBrandEvidence < Internal::Types::Model
      field :file_name, -> { String }, optional: false, nullable: false

      field :mime_type, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: false

      field :uuid, -> { String }, optional: false, nullable: false
    end
  end
end
