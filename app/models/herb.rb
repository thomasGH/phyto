class Herb < ActiveRecord::Base
  belongs_to :activity

  has_many :effects_herbs, dependent: :destroy
  has_many :effects, through: :effects_herbs

  has_many :herbs_compositions, dependent: :destroy
  has_many :compositions, through: :herbs_compositions

  has_many :classifications_herbs, dependent: :destroy
  has_many :classifications, through: :classifications_herbs
end
