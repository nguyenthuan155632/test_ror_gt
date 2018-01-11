#!/usr/bin/env ruby

require_relative 'Q1a'
require 'benchmark' 

t = 5_000 # t times benchmark

test_string = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis magna eu
  lacus pulvinar vestibulum ut ac ante. Lorem ipsum dolor sit amet, consectetur
  adipiscing elit. Suspendisse et pretium orci. Phasellus congue iaculis
  sollicitudin. Morbi in sapien mi, eget faucibus ipsum. Praesent pulvinar nibh
  vitae sapien congue scelerisque. Aliquam sed aliquet velit. Praesent vulputate
  facilisis dolor id ultricies. Phasellus ipsum justo, eleifend vel pretium nec,
  pulvinar a justo. Phasellus erat velit, porta sit amet molestie non,
  pellentesque a urna. Etiam at arcu lorem, non gravida leo. Suspendisse eu leo
  nibh. Mauris ut diam eu lorem fringilla commodo. Aliquam at augue velit, id
  viverra nunc.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis magna eu
  lacus pulvinar vestibulum ut ac ante. Lorem ipsum dolor sit amet, consectetur
  adipiscing elit. Suspendisse et pretium orci. Phasellus congue iaculis
  sollicitudin. Morbi in sapien mi, eget faucibus ipsum. Praesent pulvinar nibh
  vitae sapien congue scelerisque. Aliquam sed aliquet velit. Praesent vulputate
  facilisis dolor id ultricies. Phasellus ipsum justo, eleifend vel pretium nec,
  pulvinar a justo. Phasellus erat velit, porta sit amet molestie non,
  pellentesque a urna. Etiam at arcu lorem, non gravida leo. Suspendisse eu leo
  nibh. Mauris ut diam eu lorem fringilla commodo. Aliquam at augue velit, id
  viverra nunc.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis magna eu
  lacus pulvinar vestibulum ut ac ante. Lorem ipsum dolor sit amet, consectetur
  adipiscing elit. Suspendisse et pretium orci. Phasellus congue iaculis
  sollicitudin. Morbi in sapien mi, eget faucibus ipsum. Praesent pulvinar nibh
  vitae sapien congue scelerisque. Aliquam sed aliquet velit. Praesent vulputate
  facilisis dolor id ultricies. Phasellus ipsum justo, eleifend vel pretium nec,
  pulvinar a justo. Phasellus erat velit, porta sit amet molestie non,
  pellentesque a urna. Etiam at arcu lorem, non gravida leo. Suspendisse eu leo
  nibh. Mauris ut diam eu lorem fringilla commodo. Aliquam at augue velit, id
  viverra nunc.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis magna eu
  lacus pulvinar vestibulum ut ac ante. Lorem ipsum dolor sit amet, consectetur
  adipiscing elit. Suspendisse et pretium orci. Phasellus congue iaculis
  sollicitudin. Morbi in sapien mi, eget faucibus ipsum. Praesent pulvinar nibh
  vitae sapien congue scelerisque. Aliquam sed aliquet velit. Praesent vulputate
  facilisis dolor id ultricies. Phasellus ipsum justo, eleifend vel pretium nec,
  pulvinar a justo. Phasellus erat velit, porta sit amet molestie non,
  pellentesque a urna. Etiam at arcu lorem, non gravida leo. Suspendisse eu leo
  nibh. Mauris ut diam eu lorem fringilla commodo. Aliquam at augue velit, id
  viverra nunc.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis magna eu
  lacus pulvinar vestibulum ut ac ante. Lorem ipsum dolor sit amet, consectetur
  adipiscing elit. Suspendisse et pretium orci. Phasellus congue iaculis
  sollicitudin. Morbi in sapien mi, eget faucibus ipsum. Praesent pulvinar nibh
  vitae sapien congue scelerisque. Aliquam sed aliquet velit. Praesent vulputate
  facilisis dolor id ultricies. Phasellus ipsum justo, eleifend vel pretium nec,
  pulvinar a justo. Phasellus erat velit, porta sit amet molestie non,
  pellentesque a urna. Etiam at arcu lorem, non gravida leo. Suspendisse eu leo
  nibh. Mauris ut diam eu lorem fringilla commodo. Aliquam at augue velit, id
  viverra nunc.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis magna eu
  lacus pulvinar vestibulum ut ac ante. Lorem ipsum dolor sit amet, consectetur
  adipiscing elit. Suspendisse et pretium orci. Phasellus congue iaculis
  sollicitudin. Morbi in sapien mi, eget faucibus ipsum. Praesent pulvinar nibh
  vitae sapien congue scelerisque. Aliquam sed aliquet velit. Praesent vulputate
  facilisis dolor id ultricies. Phasellus ipsum justo, eleifend vel pretium nec,
  pulvinar a justo. Phasellus erat velit, porta sit amet molestie non,
  pellentesque a urna. Etiam at arcu lorem, non gravida leo. Suspendisse eu leo
  nibh. Mauris ut diam eu lorem fringilla commodo. Aliquam at augue velit, id
  viverra nunc.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis magna eu
  lacus pulvinar vestibulum ut ac ante. Lorem ipsum dolor sit amet, consectetur
  adipiscing elit. Suspendisse et pretium orci. Phasellus congue iaculis
  sollicitudin. Morbi in sapien mi, eget faucibus ipsum. Praesent pulvinar nibh
  vitae sapien congue scelerisque. Aliquam sed aliquet velit. Praesent vulputate
  facilisis dolor id ultricies. Phasellus ipsum justo, eleifend vel pretium nec,
  pulvinar a justo. Phasellus erat velit, porta sit amet molestie non,
  pellentesque a urna. Etiam at arcu lorem, non gravida leo. Suspendisse eu leo
  nibh. Phasellus erat velit, porta sit amet molestie non,
  pellentesque a urna. Etiam at arcu lorem, non gravida leo. Suspendisse eu leo
  nibh."

Benchmark.bm(7) do |b|
  b.report("0:") { t.times do; Question_1.new.reverse_0(test_string) end }
  b.report("1:") { t.times do; Question_1.new.reverse_1(test_string) end }
  b.report("2:") { t.times do; Question_1.new.reverse_2(test_string) end }
  b.report("3:") { t.times do; Question_1.new.reverse_3(test_string) end }
  b.report("4:") { t.times do; Question_1.new.reverse_4(test_string) end }
  b.report("5:") { t.times do; Question_1.new.reverse_5(test_string) end }
end

# Demo benchmark for reverse_4 method
puts "========================================================"
puts "========================================================"
puts test_string.length

Benchmark.bm(7) do |b|
  b.report("1 character:       ") { t.times do; Question_1.new.reverse_4(test_string[0]) end }
  b.report("10 characters:     ") { t.times do; Question_1.new.reverse_4(test_string[0..9]) end }
  b.report("100 characters:    ") { t.times do; Question_1.new.reverse_4(test_string[0..99]) end }
  b.report("1000 characters:   ") { t.times do; Question_1.new.reverse_4(test_string[0..999]) end }
  b.report("5000 characters:   ") { t.times do; Question_1.new.reverse_4(test_string[0..4999]) end }
end