#!/usr/bin/env ruby

# TextMe

log_entry = ARGV[0] || ""

# Extract the sender, receiver, and flags from the log entry
# sender = log_entry.scan(/(?<=from:)[\w+-.]+@[\w+-.]+/).join
# receiver = log_entry.scan(/(?<=to:)[\w+-.]+@[\w+-.]+/).join
# flags = log_entry.scan(/(?<=flags:)[\w+-.]+/).join

# Extract sender, receiver, and flags using regex
sender   = log_entry.match(/\[from:([^\]]+)\]/)&.captures&.first || ""
receiver = log_entry.match(/\[to:([^\]]+)\]/)&.captures&.first || ""
flags    = log_entry.match(/\[flags:([^\]]+)\]/)&.captures&.first || ""

# Print the extracted information
puts "#{sender},#{receiver},#{flags}"