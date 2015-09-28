class AnimeDetail < ActiveRecord::Base
  belongs_to :anime_title

  validates :op_title, presence: true  # OPtitleが空の場合エラー
  validates :ed_title, presence: true  # EDtitleが空の場合エラー

end
