class Post < ActiveRecord::Base
  validates_presence_of :title
  validates :content, length: {mininum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: {in: ("Fiction" || "Non-Fiction")}
end
