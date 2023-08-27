class Notification < ApplicationRecord
  after_create :stream_notification

  belongs_to :user

  validates :message, presence: true

  private

  def stream_notification
    message_data = { user_name: user.name, message: message }

    ActionCable.server.broadcast("notifications_#{user_id}", message_data)
  end
end
