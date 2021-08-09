STATES = {
  "Oregon" => "OR",
  "Alabama" => "AL",
  "New Jersey" => "NJ",
  "Colorado" => "CO"
}

CAPITALS = {
  "OR" => "Salem",
  "AL" => "Montgomery",
  "NJ" => "Trenton",
  "CO" => "Denver"
}

def find_by_state(state)
  abreviation = STATES[state]
  if abreviation
    CAPITALS[abreviation]
  else 
    puts "Unknown"
  end
end 

# def find_by_capital(capital)
#   i_capitals = CAPITALS.invert
#   i_states = STATES.invert
#   abreviation = i_capitals[capital]
#   if abreviation
#     i_states[abreviation]
#   else 
#     puts "Unknown"
#   end
# end

def find_by_capital(capital)
  abreviation = CAPITALS.key(capital)
  if abreviation
    STATES.key(abreviation)
  else 
    "Unknown"
  end
end

puts find_by_capital("Trenton")