require File.dirname(__FILE__) + '/../ext/variance_ext'

class Array
  def variance
    average = self.average
    self.inject(0.0) { |s,e| s+(e-average)**2 } / self.size.to_f
  end
end
