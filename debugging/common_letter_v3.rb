def get_most_common_letter(text)
    counter = Hash.new(0)
   text.chars.each do |char|
      counter[char] += 1 unless char == " "
    end
    counter.max_by { |k, v| v }[0]
  end
  
#   puts get_most_common_letter("the roof, the roof, the roof is on fire!")
  puts get_most_common_letter("hello Will")

  # Intended output:
  # 
  # > get_most_common_letter("the roof, the roof, the roof is on fire!")
  # => "o"
