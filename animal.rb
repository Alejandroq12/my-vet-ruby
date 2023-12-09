require './remover'
require './food'

class Animal
  attr_accessor :name, :owner
  attr_reader :id, :type, :number_of_legs

  def initialize(type, number_of_legs, name = 'Unknown')
    @id = Random.rand(1..1000)
    @name = name
    @number_of_legs = number_of_legs
    @type = type
    @liked_food = NoFood.new
  end

  def remove_leg
    remover = Remover.new
    @number_of_legs = remover.decrease(@number_of_legs)
  end

  def speak
    'grrrrrrrr'
  end

  def likes_food?(food)
    @liked_food.liked?(food)
  end
end
