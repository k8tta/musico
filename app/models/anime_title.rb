class AnimeTitle < ActiveRecord::Base
  has_many :anime_details, dependent: :destroy
  accepts_nested_attributes_for :anime_details
  default_scope { order("created_at DESC")}
end
