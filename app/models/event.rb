class Event < ActiveRecord::Base
  belongs_to :user
  has_many :attendees
  has_many :picks
  has_many :users, through: :attendees

  validates :name, presence: true
  validates :user_id, presence:true
  validates :question, presence: true
  validates :passphrase, presence: true, uniqueness: true

  def already_voted?(user, event, value)
    votes = Pick.where(user: user)
  end
end
