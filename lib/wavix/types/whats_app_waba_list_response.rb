# frozen_string_literal: true

module Wavix
  module Types
    # Returned by `whatsapp_wabas_list`.
    class WhatsAppWabaListResponse < Internal::Types::Model
      field :wabas, -> { Internal::Types::Array[Wavix::Types::WhatsAppBusinessAccount] }, optional: false, nullable: false

      field :pagination, -> { Wavix::Types::Pagination }, optional: false, nullable: false
    end
  end
end
