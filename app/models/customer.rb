class Customer
  attr_accessor :given_name, :family_name
  @@all = [

  ]
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all = self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def cust_rest(name)
      Customer.name.all.select do |cr|
        cr == name  
  end

  def cust_find_by_name(name)
      self.all.select do |cf|
        cf == name 
      end
  end

  def add_review(restaurant, ratign)
      Review.new(self,resturant, rating)
  end

  def num_revs(name)
      self.Review.all.select do {|n| n+=}
  end 
end
