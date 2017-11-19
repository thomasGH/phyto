class Classification < ActiveRecord::Base
  belongs_to :hierarchy
  belongs_to :classification

  has_many :herbs
end
