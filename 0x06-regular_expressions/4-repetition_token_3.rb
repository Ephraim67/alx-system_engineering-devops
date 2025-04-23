#!/usr/bin/env ruby

# A regular expression that matches a given string
input = ARGV[0] || ""

# The script takes an input string from the command line arguments
# and matches it against the regular expression pattern.

pattern = input.scan(/hbt*n/)
# The pattern matches the string "hbt" followed by 1 or more occurrences of "t" and ending with "n"
# The script prints the matched string

puts pattern.join