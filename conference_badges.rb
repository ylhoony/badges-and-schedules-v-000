# Write your code here.

def badge_maker(name)
  "Hello, my name is #{name}."
end

# def batch_badge_creator(attendees)
#   result = []
#   attendees.each do |e|
#     result << badge_maker(e)
#   end
#   result
# end

def batch_badge_creator(attendees)
  attendees.map do |attendee|
    "Hello, my name is #{attendee}."
  end
end

# def assign_rooms(attendees)
#   result = []
#   counter = 1
#   attendees.each do |e|
#     result << "Hello, #{e}! You'll be assigned to room #{counter}!"
#     counter += 1
#   end
#   result
# end

def assign_rooms(attendees)
  attendees.each_with_index.map do |attendee, index|
    "Hello, #{attendee}! You'll be assigned to room #{index+1}!"
  end
end

def printer(attendees)
  batch_badge_creator(attendees).each { |e| puts e }
  assign_rooms(attendees).each { |e| puts e}
end
