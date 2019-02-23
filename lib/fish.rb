class Fish
  # code goes here
  
  def initialize(name)
    @name = name
    @mood = "nervous"
    @@all << self
  end
end
