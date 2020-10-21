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

  def restaurants
    #Shows all restaurant review this one customer made
    rev = Review.all.select {|restaurant| restaurant.customer == self}.uniq
    rev.select {|rest| rest.restaurant}
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    #Returns the total number of reviews that a customer has made
    #cust1.num_reviews = 1
    Review.all.select {|r| r.customer == self}.count()
  end

  def self.find_by_name(name)
    self.all.find {|n| n.full_name == name}
  end

  def self.find_all_by_given_name(name)
    self.all.select {|n| n.given_name == name}
  end

end
