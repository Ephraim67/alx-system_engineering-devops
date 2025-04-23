#!/usr/bin/env ruby

input = ARGV[0] || ""

# A regular expression that matches a given string
pattern = input.scan(/h.n/)

# The pattern matches the string "h" followed by any character and ending with "n"
# The script prints the matched string

# The script takes an input string from the command line arguments
# Join the matches into a single string
puts pattern.join