names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(name_options)
  name_options.sample
end

def activity(activity_options)
  activity_options.sample
end

def sentence(name, activity)
  name + ' went ' + activity + ' today!'
end

puts sentence(name(names), activity(activities))