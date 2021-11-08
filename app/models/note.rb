class Note < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { minimum: 2 }
  validates :body, presence: true, length: { in: 10..500 }

  def self.search(search, user)
    if user.blank?
      user.all
    else
      user.where('title LIKE :search OR body LIKE :search', search: "%#{search}%")
    end
  end
end
