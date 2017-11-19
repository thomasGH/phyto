class Composition < ActiveRecord::Base
  has_many :herbs_compositions, dependent: :destroy
  has_many :herbs, through: :herbs_compositions
end
