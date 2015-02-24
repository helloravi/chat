class Message < ActiveRecord::Base
  scope :reverse_order, -> {order("messages.created_at DESC")}
end
