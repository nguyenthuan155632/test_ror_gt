#!/usr/bin/env ruby

class Question_1
  def reverse_0 string
    string == string.reverse
  end

  def reverse_1 string
    prev_string = ""
    prev_string << string
    (string.length / 2).times { |i| string[i], string[-i-1] = string[-i-1], string[i] }
    string == prev_string
  end

  def reverse_2 string
    length = string.length
    reverse_string = ""
    while length > 0
      length -= 1
      reverse_string << string[length]
    end
    string == reverse_string
  end

  def reverse_3 string
    reverse_string = ""
    n = 1
    while string.length >= n
      reverse_string << string[-n]
      n += 1
    end
    string == reverse_string
  end

  def reverse_4 string
    half_length = string.length / 2
    (0..half_length).each { |i| return false if string[i] != string[-i-1] }
    return true
  end

  def reverse_5 string
    (1..string.length).map { |i| string[-i] }.join == string
  end
end