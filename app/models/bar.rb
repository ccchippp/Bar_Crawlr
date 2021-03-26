class Bar < ApplicationRecord
    acts_as_favoritable

    has_many :bar_crawls
    has_many :crawls through: :bar_crawls
    has_many :users, through: :crawl
end
