class Book < ActiveRecord::Base
  belongs_to :author
  validates :title, presence: true, length: {in: 6..20}, uniqueness: {scope: :author_id}
end
