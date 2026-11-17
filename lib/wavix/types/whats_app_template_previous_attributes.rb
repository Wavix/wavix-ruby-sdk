# frozen_string_literal: true

module Wavix
  module Types
    # Value that the changed attribute of a template had before the change. It holds only that attribute — `category`
    # for `whatsapp.template.category_changed`, `quality_rating` for `whatsapp.template.quality_changed`, and `status`
    # for the status events, such as `whatsapp.template.approved`.
    class WhatsAppTemplatePreviousAttributes < Internal::Types::Model
      field :status, -> { Wavix::Types::WhatsAppTemplatePreviousAttributesStatus }, optional: true, nullable: false

      field :category, -> { Wavix::Types::WhatsAppTemplatePreviousAttributesCategory }, optional: true, nullable: false

      field :quality_rating, -> { Wavix::Types::WhatsAppTemplatePreviousAttributesQualityRating }, optional: true, nullable: false
    end
  end
end
