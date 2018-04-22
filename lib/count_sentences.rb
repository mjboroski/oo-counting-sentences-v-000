require 'pry'

class String

  def sentence?
    return self.end_with?(".")
  end

  def question?
    return self.end_with?("?")
  end

  def exclamation?
    return self.end_with?("!")
  end

  def count_sentences
    holder=[]
    self.split('.').each do |a|
      holder<<a
    end
    self.split('?').each do |b|
      holder<<b
    end
    self.split('!').each do |c|
      holder<<c
    end
    return holder.count
  end
end
