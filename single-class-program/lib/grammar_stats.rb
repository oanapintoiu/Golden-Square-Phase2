class GrammarStats
  def initialize
    @passed = 0
    @check_strings = 0
  end

  def check(text)
    fail "Nothing there, try again." if text.empty?

    letter_upcase = text[0] == text[0].upcase
    end_of_string = text.end_with?(".", "?", "!")
    result = letter_upcase && end_of_string

    if result
      @passed += 1
    end
    @check_strings += 1
    return result
  end

  def percentage_good
    if @check_strings == 0
      return 0
    end

    ((@passed * 100) / @check_strings.to_f).ceil

    # Returns as an integer the percentage of texts checked so far that passed
    # the check  defined in the `check` method. The number 55 represents 55%.
  end
end
