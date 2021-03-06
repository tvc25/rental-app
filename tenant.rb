class Tenant

  attr_accessor :name

def initialize(options = {})

    @name = options[:name]
    @age = options[:age]
    @sex = options[:sex]
    @apartment = options[:apartment] || nil

  end

end

# a1.tenants.each { |tenant| puts tenant.name }


require_relative 'rental_app_building'
require_relative 'rental_app_person'

class Person
  attr_reader :name
  attr_reader :age
  attr_accessor :apartment

  @database = {}
  @id = 0

  def self.store(person)
    @id += 1
    @database[@id] = person
  end

  def self.find(id)
    return @database[id]
  end

  def initialize(name, age, apartment)
    @name = name
    @age = age
    @apartment = apartment
    @apartment.renters << self
    # self.store(name)
  end
end