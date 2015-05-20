require 'pry'
require_relative 'tenant'
require_relative 'apartment'
require_relative 'building'

def create_tenant
  puts "Tenant Creation:"
  print "Enter tenant name: "
  name = gets.chomp

  print "Enter tenant age: "
  age = gets.to_i

  print "Enter tenant gender: "
  gender = gets.chomp

  Tenant.new name, age, gender
end

def create_apartment
  puts "Apartment Creation:"
  print "Enter apartment name: "
  name = gets.chomp

  print "Enter sqft: "
  sqft = gets.to_i

  print "Enter number of bedrooms: "
  num_bedrooms = gets.to_f

  print "Enter number of bathrooms: "
  num_bathrooms = gets.to_i

  Apartment.new name, sqft, num_bedrooms, num_bathrooms
end

def create_building
  puts "Building Creation"
  print "Enter the address: "
  address = gets.chomp

  print "Enter the style: "
  style = gets.chomp

  print "Does it have a doorman?: "
  has_doorman = (gets.chomp.downcase == 'yes') # Poor man's .to_boolean method

  print "Does it have an elevator?: "
  has_elevator = (gets.chomp.downcase == 'yes')

  print "Enter number of floors: "
  num_floors = gets.to_i

  Building.new address, style, has_doorman, has_elevator, num_floors
end

# Seed data.
tenants = []
tenants << Tenant.new('Craigsy', 44, 'male')
tenants << Tenant.new('Jonesy', 44, 'male')
tenants << Tenant.new('Kath', 32, 'female')

b1 = Building.new '123 Fake Street', 'Gothic', false, false, 18
b2 = Building.new '700 Bush Street', 'Industrial', false, true, 100

b1.apartments['Apartment 1'] = Apartment.new 'Apartment 1', 1000, 2, 2
b1.apartments['Apartment 7'] = Apartment.new 'Apartment 7', 800, 5, 3
b2.apartments['Apartment 9'] = Apartment.new 'Apartment 9', 1200, 22, 11

b1.apartments['Apartment 1'].tenants << tenants[0]
b1.apartments['Apartment 7'].tenants << tenants[1]
b2.apartments['Apartment 9'].tenants << tenants[2]

buildings = []
buildings << b1 << b2

binding.pry





