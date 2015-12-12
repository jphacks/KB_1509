class User < ActiveRecord::Base
	has_many :records
	has_many :books, :through => :records
end
