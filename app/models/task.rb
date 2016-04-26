class Task < ActiveRecord::Base
     belongs_to :person
     has_many :answers
     
    def self.recent
        # jezeli bedzie z przodu task to nie bedzie sie łaczyc z innymi np where
        order(created_at: :desc).limit(3)
    end
end
