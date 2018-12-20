class Gym
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def memberships
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def lifters
    memberships.map do |membership|
      membership.lifter
    end
  end

  def lifter_names
    lifters.map do |lifter|
      lifter.name
    end
  end

  def combined_lift_total
    lift_totals = lifters.map do |lifter|
      lifter.lift_total
    end

    lift_totals.inject { |sum, el| sum + el }
  end

end
