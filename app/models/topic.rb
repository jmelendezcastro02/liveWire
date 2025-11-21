class Topic < ApplicationRecord
  has_many :discussions, dependent: :destroy
  belongs_to :user

  validates :user_id, :title, :content, presence: true

  after_destroy_commit -> { broadcast_remove_to "topics_socket", target: "topic_#{self.id}" }
end
