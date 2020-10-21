class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    #use restaurant from customer
    #returns uniq list of customers who have reviewed a particular restuarant
    reviews.map {|r| r.customer}.uniq
  end

  def self.all
    @@all
  end

  def average_star_rating
    avg_rating = self.reviews.map {|average| average.rating}
    avg_rating.sum/avg_rating.length
  end

end
