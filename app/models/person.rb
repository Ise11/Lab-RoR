class Person < ActiveRecord::Base
    has_many :tasks
    
    def self.for_select
        all.map{ |p| [p.name, p.id]  } 
    end
end
