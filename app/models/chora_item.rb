class ChoraItem < ActiveRecord::Base
  belongs_to :admin_user
  validates_presence_of :title
end
