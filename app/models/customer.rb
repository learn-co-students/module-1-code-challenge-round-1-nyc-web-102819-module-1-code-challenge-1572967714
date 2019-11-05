class Customer
  attr_accessor :given_name, :family_name, :full_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name

    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    #timmy.num_reviews 
    Review.all.reduce {|customer|}
  end

  def self.find_by_name(name)
    self.all.select {|c|c.full_name == name}
  end

  def self.find_all_by_given(name)
    self.all.map {|c|c.}

  end
end
