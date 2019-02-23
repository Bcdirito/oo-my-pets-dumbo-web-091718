require "pry"

class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets
  
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
  
  def buy_cat(cat)
    pet = Cat.new(cat)
    pet.owner = self
    self.pets[:cats] << pet
  end
  
  def buy_dog(dog)
    pet = Dog.new(dog)
    pet.owner = self
    self.pets[:dogs] << pet
  end
  
  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end
  
  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end
  
  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end
  
  def sell_pets
    self.pets.each do |k, v|
      v.each {|pet| pet.mood = "nervous"}
      v.clear
    end
  end
  
  def list_pets
    return "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
end
