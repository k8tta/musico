class Artist < ActiveRecord::Base
  # belongs_to :user
  # has_many :musics
  # accepts_nested_attributes_for :musics
  # has_many :comments, ->{where(deleted: false)}, class_name: 'FanComment', foreign_key: 'artist_no'
  # has_many :memos, as: :memoable
end
