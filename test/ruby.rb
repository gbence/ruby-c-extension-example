#!/usr/bin/env ruby

require File.expand_path('../null.rb', __FILE__)
require File.expand_path('../../lib/variance.rb', __FILE__)

benchmark { generate(100).variance }
