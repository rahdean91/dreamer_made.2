class Page < ActiveRecord::Base
  belongs_to :user
  has_many :projects
  validates_formatting_of :link, using: :url
  acts_as_votable 
end
