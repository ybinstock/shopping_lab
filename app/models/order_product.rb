class OrderProduct < ActiveRecord::Base
has_many :users, :through => :orders
end
