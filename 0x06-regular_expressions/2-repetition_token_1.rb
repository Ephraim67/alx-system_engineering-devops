#!/usr/bin/env ruby

input = ARGV[0] || ""

# A regular expression that matches a given string
# The script takes an input string from the command line arguments
# and matches it against the regular expression pattern.
# The pattern matches the string "hbt" followed by 1 or more occurrences of "t" and ending with "n"
# pattern = input.scan(/hbt+n/)

pattern = input.scan(/hb?t+n/)


puts pattern.join