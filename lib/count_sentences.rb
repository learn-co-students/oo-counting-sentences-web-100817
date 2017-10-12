require 'pry'

class String

  def sentence?
    self.end_with?"."

  end

  def question?
    self.end_with?"?"

  end

  def exclamation?
    self.end_with?"!"

  end

  def count_sentences
      # sentence= "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
     self.split.select {|x|[".","!","?"].include?(x[-1])}.size
  end
end
