class Review < ActiveRecord::Base
  belongs_to :music
  belongs_to :user, counter_cache: true
end
