#

class Array
  def average
    self.inject(0.0) { |s,e| s+e } / self.size.to_f
  end
  def variance
    average = self.average
    self.inject(0.0) { |s,e| s+(e-average)**2 } / self.size.to_f
  end
end
