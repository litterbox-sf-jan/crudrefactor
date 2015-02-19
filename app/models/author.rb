class Author < ActiveRecord::Base
  has_many :books, dependent: :destroy
  validates :name, presence: true, length: {in: 2..20}
end
