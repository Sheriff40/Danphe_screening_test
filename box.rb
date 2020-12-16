def box number
  top_section = ""
  middle_section = ""
  bottom_section = ""

  (1..number).each do |num|
    top_section << " _"
    number == num ? middle_section << "|#{num}|" : middle_section  << "|#{num}"
    bottom_section << " -"
  end

  puts top_section
  puts middle_section
  puts bottom_section
end

box 3