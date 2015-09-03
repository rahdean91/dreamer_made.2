class Page < ActiveRecord::Base
  belongs_to :user
  has_many :projects
  validates_formatting_of :link, using: :url
end
