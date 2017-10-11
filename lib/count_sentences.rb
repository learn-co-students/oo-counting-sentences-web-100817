require 'pry'

class String

  def ends?(sym)
    self[-1] == sym
  end

  def sentence?
    ends?(".")
  end

  def question?
    ends?("?")
  end

  def exclamation?
    ends?("!")
  end

  def count_sentences
    self.tr("?!", ".").squeeze.split(".").size
  end
end
