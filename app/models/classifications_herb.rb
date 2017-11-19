class ClassificationsHerb < ActiveRecord::Base
  belongs_to :classification
  belongs_to :herb
end
