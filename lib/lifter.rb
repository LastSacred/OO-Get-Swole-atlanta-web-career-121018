class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def self.all
    @@all
  end

  def self.average_lift_total
    lift_totals = self.all.map do |lifter|
      lifter.lift_total
    end
    (lift_totals.inject { |sum, el| sum + el }.to_f / lift_totals.size).round(2)
  end

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    self.class.all << self
  end

  def memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def gyms
    memberships.map do |membership|
      membership.gym
    end
  end

  def memberships_total_cost
    costs = memberships.map do |membership|
      membership.cost
    end

    costs.inject { |sum, el| sum + el }
  end

  def sign_up(gym, cost)
    Membership.new(self, gym, cost)
  end

end
