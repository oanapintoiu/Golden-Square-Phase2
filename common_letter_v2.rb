def get_most_common_letter(text)
    no_space_text = text.gsub(/\s+/, "")
    counter = Hash.new(0)
    no_space_text.chars.each do |char|
      counter[char] += 1
    end
    counter.to_a.sort_by { |k, v| v }[-1][0]
  end
  
 get_most_common_letter("the roof, the roof, the roof is on fire!")

  # Intended output:
  # 
  # > get_most_common_letter("the roof, the roof, the roof is on fire!")
  # => "o"
