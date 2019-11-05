class Customer
  attr_accessor :given_name, :family_name

  @@Customer 
  
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
  end

  def full_name
    "#{given_name} + #{family_name}"
  end

 
end
