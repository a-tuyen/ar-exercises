require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

# Exercise 6: One-to-many association
# We haven't used the Employee class (and employees table) at all yet. 
# If you look at this table's column structure, you'll find that it has 
# a store_id (integer) column. This is a column that identifies which 
# store each employee belongs to. It points to the id (integer) column 
# of their store.

# Let's tell Active Record that these two tables are in fact related 
# via the store_id column.

# Add the following code directly inside the Store model (class):
#  has_many :employees
# Add the following code directly inside the Employee model (class): 
# belongs_to :store
# Add some data into employees. Here's an example of one (note how it 
# differs from how you create stores): 
# @store1.employees.create(first_name: "Khurram", 
# last_name: "Virani", hourly_rate: 60)
# Go ahead and create some more employees using the create method. 
# You can do this by making multiple calls to create 
# (like you have before.) No need to assign the employees to variables 
# though. Create them through the @store# instance variables that you 
# defined in previous exercises. Create a bunch under @store1 (Burnaby) 
# and @store2 (Richmond). Eg: @store1.employees.create(...).

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Store
  has_many :employees
end
class Employee
  belongs_to :store
end

@store1.employees.create(first_name: "Johnny", last_name: "Bravo", hourly_rate: 50)

@store1.employees.create(first_name: "Woody", last_name: "Woodpecker", hourly_rate: 60)

@store1.employees.create(first_name: "Elmer", last_name: "Fudd", hourly_rate: 70)

@store2.employees.create(first_name: "Mulan", last_name: "Fa", hourly_rate: 80)

@store2.employees.create(first_name: "Tweety", last_name: "Bird", hourly_rate: 90)

# pp @store2.employees