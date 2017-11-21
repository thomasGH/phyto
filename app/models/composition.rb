class Composition < ActiveRecord::Base
  has_many :herbs_compositions, dependent: :destroy
  has_many :herbs, through: :herbs_compositions

  accepts_nested_attributes_for :herbs_compositions, allow_destroy: true
end
