#!/usr/bin/env ruby

input = ARGV[0]

pattern = input.scan(/School/)

puts pattern.join