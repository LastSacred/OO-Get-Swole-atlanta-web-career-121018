class Membership
  attr_reader :cost
  attr_accessor :lifter, :gym

  @@all = []

  def self.all
    @@all
  end

  def initialize(lifter, gym, cost)
    @lifter = lifter
    @gym = gym
    @cost = cost
    self.class.all << self
  end
end
