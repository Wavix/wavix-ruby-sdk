# frozen_string_literal: true

module Wavix
  module Billing
    module Invoices
      module Types
        class DownloadInvoicesRequest < Internal::Types::Model
          field :id, -> { Integer }, optional: false, nullable: false
        end
      end
    end
  end
end
