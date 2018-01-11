#!/usr/bin/env ruby

require_relative 'Q2b'
require 'test/unit'

class TestQuestion_2 < Test::Unit::TestCase
 def test_case
 	init_matrix = [
 		[1, 2, 3, 4],
 		[5, 6, 7, 8],
 		[9, 0, 1, 2],
 		[3, 4, 5, 6]
 	]

 	q = Question_2.new
 	expected = [
 		[4, 8, 2, 6],
 		[3, 7, 1, 5],
 		[2, 6, 0, 4],
 		[1, 5, 9, 3]
 	]
 	actual = q.rotate_matrix(init_matrix.size, init_matrix)

  assert_equal(expected, actual)
 end
end