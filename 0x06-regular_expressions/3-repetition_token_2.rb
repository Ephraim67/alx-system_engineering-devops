#!/usr/bin/env ruby

# A regular expression that matches a given string
input = ARGV[0] || ""

# The script takes an input string from the command line arguments
pattern = input.scan(/hbt*n/)

# The pattern matches the string "hbt" followed by 0 or more occurrences of "t" and ending with "n"
# The script prints the matched string
# Join the matches into a single string

puts pattern.join