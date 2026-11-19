# frozen_string_literal: true

module Wavix
  module Types
    module WhatsAppMessageErrorAction
      extend Wavix::Internal::Types::Enum

      RESEND_LATER = "resend_later"
      FIX_AND_RESEND = "fix_and_resend"
      DO_NOT_RESEND = "do_not_resend"
      CONTACT_SUPPORT = "contact_support"
    end
  end
end
