class Owner
  # code goes here
  
  def initialize(name)
    @name = name
    @@all << self
  end
end
