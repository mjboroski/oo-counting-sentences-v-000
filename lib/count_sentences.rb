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
    self.split('?').each do |a|
      holder<<a
    end
    self.split('!').each do |a|
      holder<<a
    end
    return holder.count%2+holder.count/2
  end
end
