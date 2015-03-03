class Review < ActiveRecord::Base
  RECENT_LIMIT = 5
  belongs_to :product
  belongs_to :user
  validates_presence_of :content, :rating, :user_id
  scope :recent, -> { limit(RECENT_LIMIT)}

end
