class Crawl < ApplicationRecord
  belongs_to :user
  has_many :bar_crawls
  has_many :bars, through: :bar_crawls
end
