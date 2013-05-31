#!/usr/bin/env ruby
# encoding: UTF-8

def benchmark n=10000, print=true, &block
  times = []
  n.times do
    start = Time.now
    block.call
    times << (Time.now-start)
  end
  m = times.mean
  s = Math.sqrt(times.variance) #(m))
  STDERR.puts 'Benchmark results (for n=%d): %6.4fs, average: %6.4fms ± %6.4fms' % [ n, m*n, m*1000, s*1000 ]
  return [m, s]
end

def generate n=100, r=1000
  return Array.new(n) { rand(r) }
end

benchmark { generate } if __FILE__==$0
