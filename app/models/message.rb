class Message < ApplicationRecord
  belongs_to :user
  validates :body, presence: true
  # You can use the scope method to add custom queries
  # Adding this limits the last 20 messages to be displayed in your chatbox
  scope :custom_display, -> { order(:created_at).last(20) }
end
