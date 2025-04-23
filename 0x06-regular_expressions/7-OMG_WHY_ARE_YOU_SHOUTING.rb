#!/usr/bin/env ruby

# Regex matching capital letters

input = ARGV[0] || ""

# A regular expression that matches a given string
pattern = input.scan(/[A-Z]/)

puts pattern.join

