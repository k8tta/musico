class Music < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews
  belongs_to :artist
  has_many :memos, as: :memoable


  validates :genre,
      presence: true
      # length: {is: 17}
  validates :title,
      presence: true,
      length: {minimum: 1, maximum: 100}
  # validates :publish,
  #     inclusion: {in: ['sony music']}
end
