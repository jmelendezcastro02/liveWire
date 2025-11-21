class Discussion < ApplicationRecord
  belongs_to :user
  belongs_to :topic

  validates :topic_id, :user_id, :message, presence: true

  after_create_commit -> { broadcast_append_to "topic_discussion_socket", partial: "topics/topic_discussion", target: "topic_#{self.topic_id}_discussions_container" }
end
