# frozen_string_literal: true

module Wavix
  module Types
    # Returned by `whatsapp_templates_list`.
    class WhatsAppTemplatePageResponse < Internal::Types::Model
      field :templates, -> { Internal::Types::Array[Wavix::Types::WhatsAppTemplate] }, optional: false, nullable: false

      field :pagination, -> { Wavix::Types::Pagination }, optional: false, nullable: false
    end
  end
end
