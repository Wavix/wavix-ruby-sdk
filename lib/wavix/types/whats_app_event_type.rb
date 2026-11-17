# frozen_string_literal: true

module Wavix
  module Types
    module WhatsAppEventType
      extend Wavix::Internal::Types::Enum

      WHATSAPP_MESSAGE_RECEIVED = "whatsapp.message.received"
      WHATSAPP_MESSAGE_SENT = "whatsapp.message.sent"
      WHATSAPP_MESSAGE_DELIVERED = "whatsapp.message.delivered"
      WHATSAPP_MESSAGE_READ = "whatsapp.message.read"
      WHATSAPP_MESSAGE_FAILED = "whatsapp.message.failed"
      WHATSAPP_CONTACT_MARKETING_STOPPED = "whatsapp.contact.marketing_stopped"
      WHATSAPP_CONTACT_MARKETING_RESUMED = "whatsapp.contact.marketing_resumed"
      WHATSAPP_TEMPLATE_APPROVED = "whatsapp.template.approved"
      WHATSAPP_TEMPLATE_REJECTED = "whatsapp.template.rejected"
      WHATSAPP_TEMPLATE_PAUSED = "whatsapp.template.paused"
      WHATSAPP_TEMPLATE_DISABLED = "whatsapp.template.disabled"
      WHATSAPP_TEMPLATE_FLAGGED = "whatsapp.template.flagged"
      WHATSAPP_TEMPLATE_CATEGORY_CHANGED = "whatsapp.template.category_changed"
      WHATSAPP_TEMPLATE_QUALITY_CHANGED = "whatsapp.template.quality_changed"
      WHATSAPP_TEMPLATE_UPDATED = "whatsapp.template.updated"
      WHATSAPP_SENDER_CONNECTED = "whatsapp.sender.connected"
      WHATSAPP_SENDER_RESTRICTED = "whatsapp.sender.restricted"
      WHATSAPP_SENDER_FLAGGED = "whatsapp.sender.flagged"
      WHATSAPP_SENDER_BANNED = "whatsapp.sender.banned"
      WHATSAPP_SENDER_DISCONNECTED = "whatsapp.sender.disconnected"
      WHATSAPP_SENDER_QUALITY_CHANGED = "whatsapp.sender.quality_changed"
      WHATSAPP_SENDER_UPDATED = "whatsapp.sender.updated"
    end
  end
end
