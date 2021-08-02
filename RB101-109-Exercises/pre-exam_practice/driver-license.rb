## https://edabit.com/challenge/w3A2Fto3f8jz96AyT
# You have to get a new driver's license. You show up at the office at the same time as four other people. The office says they will see everyone in alphabetical order and it takes 20 minutes for them to process each new license. All of the agents are available now, and they can each see one customer at a time. How long will it take for you to walk out with your new license?
# Your input will be a string of your name me, an integer of the number of available agents, and a string of the other four names separated by spaces others.
# Return the number of minutes it will take to get your license.

## Other solution:
# [*others.split, me].sort.index(me) / agents + 1) * 20

PROCESSING_TIME = 20

def license(me, agents, others)
  clients = others.split(' ') << me
  clients.sort!

  time_passed = 0
  clients.each_slice(agents) do |cur_clients|
    time_passed += PROCESSING_TIME
    return time_passed if cur_clients.include?(me)
  end
end


# Examples
p license("Eric", 2, "Adam Caroline Rebecca Frank") == 40
# # As you are in the second group of people.

p license("Zebediah", 1, "Bob Jim Becky Pat") == 100
# # As you are the last person.

p license("Aaron", 3, "Jane Max Olivia Sam") == 20
# # As you are the first.

