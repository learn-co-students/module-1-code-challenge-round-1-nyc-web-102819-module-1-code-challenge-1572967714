class Customer
  attr_accessor :given_name, :family_name

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
   
  def restaurants #restaurants I have written reviews for
    rest = my_reviews.map { |reviews| reviews.restaurant}
    rest.uniq
  end

  def my_reviews #all of my reviews 
    Review.all.select { |reviews| reviews.customer ==self }
  end

  def num_reviews
    my_reviews.count
  end

  def self.find_by_name(full_name)
    name_split = full_name.split  #split string of full_name into strings of given_name and family_name
    
  end

  def self.find_all_by_given_name(given_name)
    self.all.select {|names| names.given_name == given_name}
  end
end

# - `Customer.find_by_name(name)`
#   - given a string of a **full name**, returns the **first customer** whose full name matches
