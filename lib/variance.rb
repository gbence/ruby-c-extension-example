class Array
  def mean
    inject(0.0){|s,e| s+e} / size.to_f
  end

  def variance m=mean
    inject(0.0){|s,e| s+( (e-m)**2 ) } / size.to_f
  end
end
