# require 'pry'

data = [
  ['Frank', 33],
  ['Stacy', 15],
  ['Juan', 24],
  ['Dom', 32],
  ['Steve', 24],
  ['Jill', 24]
]

sorted_by_age = data.sort { |a,b| b[1] <=> a[1] }


# sorted_by_age.each do |n| 
#   if data_hash.key?(n)
#     # binding.pry
#     data_hash[n[1]] << n[0]
#   else
#     data_hash[n[1]] = [n[0]]
#   end


# end

# puts sorted_by_age.group_by { |person| person[1].itself }

puts sorted_by_age.group_by { |person|  person.pop }.transform_values { |name| name.flatten }

#transform_values lookup

# meta programming lookup