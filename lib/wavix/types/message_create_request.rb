# frozen_string_literal: true

module Wavix
  module Types
    class MessageCreateRequest < Internal::Types::Model
      field :from, -> { String }, optional: false, nullable: false

      field :to, -> { String }, optional: false, nullable: false

      field :message_body, -> { Wavix::Types::MessageBody }, optional: false, nullable: false

      field :callback_url, -> { String }, optional: true, nullable: false

      field :validity, -> { Integer }, optional: true, nullable: false

      field :tag, -> { String }, optional: true, nullable: false
    end
  end
end
