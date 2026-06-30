# frozen_string_literal: true

module Wavix
  module Types
    class ListSessionsResponseItem < Internal::Types::Model
      field :created_at, -> { String }, optional: true, nullable: false

      field :session_id, -> { String }, optional: true, nullable: false

      field :phone_number, -> { String }, optional: true, nullable: false

      field :destination_country, -> { String }, optional: true, nullable: false

      field :status, -> { String }, optional: true, nullable: false

      field :charge, -> { String }, optional: true, nullable: false

      field :service_id, -> { String }, optional: true, nullable: false

      field :service_name, -> { String }, optional: true, nullable: false
    end
  end
end
