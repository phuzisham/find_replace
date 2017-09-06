#!/usr/bin/env ruby

class FRP
  def initialize()

  end

  def find_and_replace(string, target, change)
    string = string.split(' ')
    i = 0
    while(i < string.length) do
      if (string[i].include?(target))
        string[i].sub!(target, change)
      end
      i += 1
    end
    puts string.join(' ')
    File.open('test.txt', 'w') { |file| file.write(string.join(' '))}
  end
end

sample = FRP.new()
string = File.read('test.txt')
target = 'cat'
change = 'dog'
sample.find_and_replace(string, target, change)
