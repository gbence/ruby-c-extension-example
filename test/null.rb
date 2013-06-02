#!/usr/bin/env ruby
# encoding: UTF-8

def benchmark n=10000, print=true, initializer=nil, &block
  times = []
  n.times do
    init  = initializer ? initializer.call : nil
    start = Time.now
    block.call(init)
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

if __FILE__==$0
  require File.expand_path('../../ext/variance_ext.so', __FILE__)
  benchmark { generate }
end
