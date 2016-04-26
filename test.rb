rspec spec/features/tasks_spec.rb:35

<!--<% @task.answers.each do |answer| %>-->
<!--  <%= render answer %>-->
<!--<% end %>-->
#  def bigger(a,b)
#     if a > b do
#       "{#a} jest wieksze niż {#b}"
#     else
#       "{#b} jest wieksze niż {#a}"
#     end
#  end

# def count_sum (*args)
#     args.inject(:+)
# end

# def objetosc dlugosc: 1, wysokosc: 1, szerokosc: 1
#     dlugosc*szerokosc*wysokosc
# end

# def obj h
#     h.values.inject:*
# end

# def obj (h)
#     h = {dlugosc: 1, wysokosc: 1, szerokosc: 1}.merge(h)
#     h.values.inject:*
# end

# def polution_level a
#   case 
#     when 1..10
#         "małe"
#     when 11..50
#         "srednie"
#     when 51..99
#          "wysokie"
#     else
#          "uciekaj"
#  end
# end

# class User
#     # geter / setter attr_reader - tylko do odczytu, 
#     attr_acessor :name 
#      def initialize (name)
#         @name = name.capitalize
#      end
# end

# class User
#     # geter / setter attr_reader - tylko do odczytu, 
#     attr_acessor :name 
#      def initialize h
#         @name = h[:name].capitalize
#         @created_at = hash[:created_at]
#      end
     
#      def to_s
#         "Użytkownik o imieniu {#name}, dodany: {#created_at}" 
#      end
# end


# # u = User.new "marysia"
# # puts u.name


# u = User.new name: "asia", created_at: Time.now
# puts u 
# # "Użytkownik o imieniu Asia, dodany: 2015-03-01 22:22"
# u.created_at = 45
# # powinno rzucic wyjatek 

# class User

#     @@inst = 0
#     def initialize
#         @@inst+=1
#     end
    
#     def self.number_of_instances
#         @@inst    
#     end
# end

# user = User.new
# admin  = User.new
# puts User.number_of_instances
# # 2
# User.new
# puts User.number_of_instances

# class User
#   def meet(user)
#     show_joy_of_meeting
#     user.show_joy_of_meeting
#   end
#   def show_joy_of_meeting
#     puts "{#name} ma nowego znajomego"
#   end

# zosia = User.new "zosia"
# adam = User.new "adam"
# zosia.meet(adam)
# # "Zosia ma nowego znajomego"
# # "Adam ma nowego znajomego"
# adam.show_joy_of_meeting
# # powinno rzucic wyjatek - nie mozna sie cieszyc ze spotkania bez spotkania

