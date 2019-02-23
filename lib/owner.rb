require "pry"

class Owner
  # code goes here
  attr_reader :species, :pets
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
    
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def self.count
    @@all.length
  end
  
  def say_species
    return "I am a human."
  end
  
  def buy_fish(fish)
    pet = Fish.new(fish)
    pet.owner = self
    self.pets[:fishes] << pet
  end
  
end
