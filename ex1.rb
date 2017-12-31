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
#train 111 train 80B train 610
#0-7
direction_first = trains[7][:direction]
frequency_first = trains[5][:frequency_in_minutes]
direction_second = trains[2][:direction]

northbound_trains = []
trains.each {|train|
if train[:direction] == "north"
northbound_trains << train[:train]
end
