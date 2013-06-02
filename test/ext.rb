#!/usr/bin/env ruby

require File.expand_path('../null.rb', __FILE__)
require File.expand_path('../../ext/variance_ext.so', __FILE__)

benchmark(10000, true, lambda { generate(100) }) { |a| a.variance }
