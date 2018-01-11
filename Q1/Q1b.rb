#!/usr/bin/env ruby

require_relative 'Q1a'
require 'test/unit'

class TestQuestion_1 < Test::Unit::TestCase
 def test_case
  question = Question_1.new
  
  assert_equal(true, question.reverse_0('たけやぶやけた'))
  assert_equal(true, question.reverse_1('たけやぶやけた'))
  assert_equal(true, question.reverse_2('たけやぶやけた'))
  assert_equal(true, question.reverse_3('たけやぶやけた'))
  assert_equal(true, question.reverse_4('たけやぶやけた'))
  assert_equal(true, question.reverse_5('たけやぶやけた'))

  assert_equal(false, question.reverse_0('hello'))
  assert_equal(false, question.reverse_1('hello'))
  assert_equal(false, question.reverse_2('hello'))
  assert_equal(false, question.reverse_3('hello'))
  assert_equal(false, question.reverse_4('hello'))
  assert_equal(false, question.reverse_5('hello'))
 end
end