require_relative './application.rb'

class Item
  attr_accessor :name, :price

  @@items = []

  def initialize(name,price)
    @name = name
    @price = price
    @@items << self
  end
end
