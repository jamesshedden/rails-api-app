class Choice < ActiveRecord::Base
  belongs_to :option
  belongs_to :collection
end
