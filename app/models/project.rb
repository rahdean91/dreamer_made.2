class Project < ActiveRecord::Base
  belongs_to :user
  belongs_to :page
  belongs_to :category
  belongs_to :phase
end
