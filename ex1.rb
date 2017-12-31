#ex1

trains =
[
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]
#train 111  80B  610
#0-7
direction_first = trains[7][:direction]
frequency_first = trains[5][:frequency_in_minutes]
direction_second = trains[2][:direction]

northbound_trains = []
trains.each {|train|
if train[:direction] == "north"
northbound_trains << train[:train]
end
}

eastbound_trains = []
trains.each {|train|
if train[:direction] == "east"
eastbound_trains << train[:train]
end
}

def trains_in_direction(trains, direction)
correct_trains = []
trains.each { |train|
if train[:direction] == direction
correct_trains << train[:train]
end
}
return correct_trains
end

puts "north trains:"
puts trains_in_direction(trains,"north")
puts "south trains:"
puts trains_in_direction(trains,"east")

trains.first[:first_departure_time] = 6
puts "First departure time:"
puts trains
