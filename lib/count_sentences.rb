require 'pry'

class String

  def sentence?
    self.match?(/[.]\z/)
  end

  def question?
    self.match?(/[?]\z/)
  end

  def exclamation?
    self.match?(/[!]\z/)
  end

  def count_sentences
    self.split(/[.!?]/)
    .reject {|str| str.include?("."||"?"||"!")}
    .reject {|str| str.empty?}
    .length
  end
end