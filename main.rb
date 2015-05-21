require 'pry'

require_relative 'Building'
require_relative 'apartment'
require_relative 'tenant'

def menu
  puts `clear`
  puts "Tenant / Apartment / Building"
  print "[t]enant, [a]partment, [b]uilding or [q]uit: "
  gets.chomp.downcase
end

def new_tenant
  print "Name: "
  name = gets.to_s
  print "Age: "
  age = gets.to_i
  print "Sex: "
  sex = gets.to_s
end
#   Tenant.new {@name:} {@age:} {@sex:}
# end

# def new_apartment
#   print "Name: "
#   name = gets.to_s
#   print "Age: "
#   age = gets.to_i
#   print "Sex: "
#   sex = gets.to_s
#   Apartment.new {@name:} {@age:} {@sex:}
# end

# def new_building
#   print "Name: "
#   name = gets.to_s
#   print "Age: "
#   age = gets.to_i
#   print "Sex: "
#   sex = gets.to_s
#   Building.new {@name:} {@age:} {@sex:}
# end



response = menu

while response != 'q'
  case response
  when 't'
    new_tenant
  when 'a'
    new_apartment
  when 'b'
    new_building
  end

  response = menu
end

# CREATES A BUILDING

building_one = Building.new floors: 5, address:"WDI Heights, 1 GA Road, GAVille", num_of_apartments: 15, age:100, concierge:true

# CREATES APARTMENTS

a1 = Apartment.new price: 3000, occupied: false, balcony: true, sqft: 500, bedrooms: 3, bathrooms: 2
a2 = Apartment.new price: 3000, occupied: false, balcony: true, sqft: 700, bedrooms: 5, bathrooms: 4
a3 = Apartment.new price: 3000, occupied: false, balcony: true, sqft: 200, bedrooms: 2, bathrooms: 1

# CREATES TENANTS

t1 = Tenant.new name: 'Tobia Cassandro', age:33, sex: 'male'
t2 = Tenant.new name: 'Gianfranco Zola', age:42, sex: 'male'
t3 = Tenant.new name: 'Marcel Desailly', age:45, sex: 'male'



# [a1, a2, a3].each{ |appt| building_one.apartments << appt }

# [t1, t2, t3].each{ |tenant| a1.tenants << tenant }

# PUTS TENANTS IN BUILDING

a1.tenants << t1 << t3

binding.pry
nil