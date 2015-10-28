class Collection < ActiveRecord::Base
  belongs_to :user
  has_many :options
  has_many :choices
end
