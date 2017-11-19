class Classification < ActiveRecord::Base
  belongs_to :hierarchy
  belongs_to :classification

  has_many :classifications_herbs, dependent: :destroy
  has_many :herbs, through: :classifications_herbs
end
