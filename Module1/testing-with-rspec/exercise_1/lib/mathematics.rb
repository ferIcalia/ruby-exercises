class Mathematics
  def self.sum(*args)
    args.reduce(:+)
  end

  def self.subtract(*args)
    args.reduce(:-)
  end

  def self.multiplication(*args)
    args.reduce(:*)
  end

  def self.division(*args)
    args.reduce(:/)
  end
end
