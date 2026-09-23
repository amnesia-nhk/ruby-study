def caesar_cipher(string, shift)
  result = ""

  string.each_char do |char|
    if char.ord.between?("a".ord, "z".ord)
      shifted = ("a".ord + (char.ord - "a".ord + shift) % 26).chr
      result << shifted
    elsif char.ord.between?("A".ord, "Z".ord)
      shifted = ("A".ord + (char.ord - "A".ord + shift) % 26).chr
      result << shifted
    else
      result << char
    end
  end

  result
end

puts caesar_cipher("What a string!", 5) # => "Bmfy f xywnsl!"
