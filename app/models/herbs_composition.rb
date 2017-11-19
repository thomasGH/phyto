class HerbsComposition < ActiveRecord::Base
  belongs_to :herb
  belongs_to :composition
end
