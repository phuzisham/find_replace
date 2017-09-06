#!/usr/bin/env ruby

class FRP
  def initialize(sentence)
    @str = sentence
  end

  def find_and_replace(target, change)
    string = @str.split(' ')
    i = 0
    while(i < string.length) do
      if (string[i].include?(target))
        string[i].sub!(target, change)
      end
      i += 1
    end
    string.join(' ')
  end
end
