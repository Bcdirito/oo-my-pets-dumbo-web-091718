class Owner
  # code goes here
  attr_reader :species
  attr_writer :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
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
  
end
