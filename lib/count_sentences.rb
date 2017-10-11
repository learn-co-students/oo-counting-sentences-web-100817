require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else false
    end

  end

  def exclamation?
    if self.end_with?("!")
      true
    else false
    end

  end

  def count_sentences
    string_array = self.split(" ")
    count = 0
    string_array.each {|word| count += 1 if word.sentence? || word.question? || word.exclamation?}
    count
  end
end
