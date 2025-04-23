#!/usr/bin/env ruby

# A regular expression that matches a given string
input = ARGV[0] || ""

# The script takes an input string from the command line arguments
# and matches it against the regular expression pattern.
pattern = input.scan(/^\d{10}$/)
# The pattern matches a string that contains exactly 10 digits
# The script prints the matched string
# Join the matches into a single string

puts pattern.join