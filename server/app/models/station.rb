class Station < ActiveRecord::Base
    has_many :accesses, dependent: :destroy


end
