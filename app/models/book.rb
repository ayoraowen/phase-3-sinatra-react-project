class Book < ActiveRecord::Base
    has_many :chapters
    has_many :verses
end