class AnimeDetail < ActiveRecord::Base
  belongs_to :anime_title

  validates :profile, presence: true  # プロフィールが空の場合エラー
end
