#zad1
# class Person
#   attr_accessor :name
#   def initialize(name)
#     @name = name
#   end
  
#   def to_s
#       "Jestem #{name}"
#   end
# end

# class Student 
#      attr_accessor :subject
#   def initialize(name, subject)
#     @name = name
#     @subject = subject
#   end
  
#   def to_s
#       "Jestem #{name}, studiuję na kierunku: #{subject}"
#   end
# end
# tab = [Person.new("asia"), Student.new("zosia","informatyka"), Student.new("adam","biologia")]
# puts tab
# "Jestem Asia"
# "Jestem Zosia, studiuję na kierunku: informatyka"
# "Jestem Adam, studiuję na kierunku: biologia"

# zad2

class Object
    def odwrocone
        split.reverse.join(" ")
    end
end
a = "to jest tekst"
puts a.odwrocone
# "tekst jest to"
puts "ja to ty".odwrocone
# "ty to ja"