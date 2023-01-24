class Post < ApplicationRecord

  #validate title and body
  validates :title, presence: true
  #validate title has length of specific characters
  validates :title, length: { minimum: 5 }
  validates :title, length: { maximum: 10 }

  # Custom validator to make sure there is at least one Capitol Letter
  validate :title_must_be_at_least_one_cap

  validates :body, presence: true

  #validate the Uniqueness of the title and body
  validates :title, uniqueness: true
  validates :body, uniqueness: true




  private

  def title_must_be_at_least_one_cap
      return if title == title.upcase_first
        errors.add(:title, "first leter must be capitol letter or a number")
  end




end
