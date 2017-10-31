# Write your code here.

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  result = []
  attendees.each do |e|
    result << badge_maker(e)
  end
  result
end

def assign_rooms(attendees)
  result = []
  counter = 1
  attendees.each do |e|
    result << "Hello, #{e}! You'll be assigned to room #{counter}!"
    counter += 1
  end
  result
end

def printer(attendees)
  a = batch_badge_creator(attendees)
  a.each { |e| puts e }
  b = assign_rooms(attendees)
  b.each { |e| puts e}
end
