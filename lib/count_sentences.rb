require 'pry'

class String

  def sentence?
    if self[-1] == "."
      true
    else
      false
    end
  end

  def question?
    if self[-1] == "?"
      true
    else
      false
    end

  end

  def exclamation?
    if self[-1] == "!"
      true
    else
      false
    end

  end



  def count_sentences
    count = 0
    i = 0
    variable = self + " "

    while i < variable.length
      if (variable[i] == "." && variable[i+1] == " ") || (variable[i] == "?" && variable[i+1] == " ")|| (variable[i] == "!" && variable[i+1] == " ")
        count +=1
      end
      i += 1
    end

    count
  end

end
