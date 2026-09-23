# frozen_string_literal: true

module Wavix
  module Types
    class WhatsAppTemplateResponse < Internal::Types::Model
      field :template, -> { Wavix::Types::WhatsAppTemplate }, optional: false, nullable: false
    end
  end
end
