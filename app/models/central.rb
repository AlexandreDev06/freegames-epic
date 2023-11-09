# Class to manage session of whatsapp
class Central < ApplicationRecord
  belongs_to :user

  enum status: { connected: 0, disconnected: 1 }
end
