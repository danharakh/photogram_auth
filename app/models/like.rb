class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :photo

  validates :user_id, presence: true, uniqueness:{scope: :photo_id, message:"each like must have a user_id and photo_id"}
  validates :photo_id, presence: true
end
