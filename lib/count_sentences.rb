require 'pry'

class String

  def sentence?
    self[-1] == "." ? true : false
  end

  def question?
    self[-1] == "?" ? true : false
  end

  def exclamation?
    self[-1] == "!" ? true : false
  end

  def count_sentences
    self.split(".").map {|a| a.split("!")}.flatten.map {|b| b.split("?")}.flatten.delete_if {|sentence| sentence == ""}.count
  end
end
