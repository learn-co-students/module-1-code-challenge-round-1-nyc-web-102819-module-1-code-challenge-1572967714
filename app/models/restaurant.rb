class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def res_rev(name)
      Customer.name.Restaurant.all.select do |n|
        n == name
      end
  end

  def who(name)
      Customer.name.Restaurant.all.name.review.select do |r|
        r == name
  end

end
