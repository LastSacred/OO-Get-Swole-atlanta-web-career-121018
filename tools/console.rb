# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

bro = Lifter.new("Brosef", 9000)
chad = Lifter.new("Chad", 150)
dude = Lifter.new("Dude", 250)

musclemax = Gym.new("Musclemax")
getit = Gym.new("Get it!")
lifttyme = Gym.new("Lift Tyme")

membership1 = bro.sign_up(musclemax, 30)
membership2 = bro.sign_up(getit, 35)
membership3 = bro.sign_up(lifttyme, 20)
membership4 = chad.sign_up(getit, 35)
membership5 = dude.sign_up(getit, 35)

test = nil

binding.pry

puts "Gains!"
