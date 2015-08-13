require 'benchmark/ips'
require File.dirname(__FILE__) + '/samples/lib/underscore'

Benchmark.ips do |x|
  underscore = Underscore.new('firstKey')
  x.report('String IO') { underscore.call_test }
  x.report('C version') { underscore.call_c }
  x.report('Ruby') { underscore.call_ruby }
  x.compare!
end

Benchmark.ips do |x|
  underscore = Underscore.new('')
  x.report('String IO') { underscore.call_test }
  x.report('C version') { underscore.call_c }
  x.report('Ruby') { underscore.call_ruby }
  x.compare!
end
