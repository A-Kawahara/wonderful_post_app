class Article < ApplicationRecord
  validates :title, presence: true, uniquiness: { case_sensitive}
  validates :content, presence: true
end
