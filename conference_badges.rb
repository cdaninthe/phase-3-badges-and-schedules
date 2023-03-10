# Write your code here.
def badge_maker (name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(array)
    array.map do |name|
        badge_maker(name)
    end
end

def assign_rooms(array)
    room_assign=[]
    array.each_with_index do |name, index|
        if index < 8
            room_assign << "Hello, #{name}! You'll be assigned to room #{index + 1}!"
        end
    end
    room_assign
end

def printer (array)
    batch_badge_creator(array).each do |badge|
        puts badge
    end
  
    assign_rooms(array).each do |room|
        puts room
    end
end