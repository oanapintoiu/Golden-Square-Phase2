def extract_uppercase(text)
  words = text.split(" ")
  # filter
  upercase_words = words.select do |word|
    word == word.upcase
  end
  return upercase_words.map do |word|
    word.gsub(/[^A-Z]/, '')
  end
end
