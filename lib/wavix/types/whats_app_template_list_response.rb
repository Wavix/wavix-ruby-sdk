# frozen_string_literal: true

module Wavix
  module Types
    class WhatsAppTemplateListResponse < Internal::Types::Model
      field :templates, -> { Internal::Types::Array[Wavix::Types::WhatsAppTemplate] }, optional: false, nullable: false
    end
  end
end
