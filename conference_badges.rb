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
  batch_badge_creator(attendees).each { |e| puts e }
  assign_rooms(attendees).each { |e| puts e}
end
