class Herb < ActiveRecord::Base
  belongs_to :activity
  belongs_to :classification

  has_many :effects_herbs, dependent: :destroy
  has_many :effects, through: :effects_herbs

  has_many :herbs_compositions, dependent: :destroy
  has_many :compositions, through: :herbs_compositions
end
