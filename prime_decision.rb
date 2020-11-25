#!/usr/bin/env ruby
require 'prime'

def divide_per_ten
  f = File.open("e.txt")
  s = f.read.delete(".")
  start_index, goal_index = 0, 10
  
  while true do
    if prime_decision(s[start_index, goal_index].to_i) == true then
      puts s[start_index, goal_index]
      break
    end
    start_index = start_index + 1
  end
  
end
       
def prime_decision(num)
  return Prime.prime?(num)
end

divide_per_ten
