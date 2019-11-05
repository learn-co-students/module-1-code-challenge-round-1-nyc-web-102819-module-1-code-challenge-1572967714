class Restaurant
  attr_reader :name

  @@all = []

  @@customer=[]

  def initialize(name)
    @name = name
 
   @@all << self
  end

  def self.all
    @@all 
  end

  def self.customer
    @@customer.uniq
  end
end

