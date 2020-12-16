def convert_number number, from, to

  conversion = {"binary" => 2, "octal" => 8}

  to_base = conversion[to]
  converted_number = ""

  while number >= 1 do
    converted_number += (number%to_base).to_s
    number = number/to_base
  end
  return converted_number.reverse

end

puts(convert_number(42, "decimal", "binary"))
puts(convert_number(42, "decimal", "octal"))
