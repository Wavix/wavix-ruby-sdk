# frozen_string_literal: true

module Wavix
  module Types
    module WhatsAppTemplateStatus
      extend Wavix::Internal::Types::Enum

      DRAFT = "draft"
      PENDING = "pending"
      APPROVED = "approved"
      REJECTED = "rejected"
      PAUSED = "paused"
      FLAGGED = "flagged"
      DISABLED = "disabled"
      IN_APPEAL = "in_appeal"
      PENDING_DELETION = "pending_deletion"
      DELETED = "deleted"
      UNKNOWN = "unknown"
    end
  end
end
