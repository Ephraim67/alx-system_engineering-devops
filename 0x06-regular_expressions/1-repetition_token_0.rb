#!/usr/bin/env ruby

# A regular expression that matches a given string
# The script takes an input string from the command line arguments
# and matches it against the regular expression pattern.
# The pattern matches the string "hbt" followed by 2 to 5 occurrences of "t" and ending with "n"
# The script prints the matched string
input = ARGV[0] || ""

# The regular expression to match
pattern = input.scan(/hbt{2,5}n/)

# Join the matches into a single string
puts pattern.join
