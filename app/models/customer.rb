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
    @all
  end

  def restaurants
    restaurant.all.select do |restaurant|
      restaurant.customer == self
    end
  end

  def add_review(restaurant, rating)
    self.review << restaurant, rating
  end

    def num_reviews

    end

    def self.find_by_name(name)
        self.all.find do |full_name|
          customer.full_name == full_name
    end

    def self.find_all_by_given_name(name)
      self.all.find do |given_name|
        customer.given_name == given_name
      end

    end

end
