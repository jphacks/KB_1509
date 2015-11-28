class Recode < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

  validates :book_id, presence: true
  validates :date, presence: true
  validates :user_id, presence: true


end
