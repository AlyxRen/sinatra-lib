module Rixius
  module DateTime
    Now = Proc.new do
      ::DateTime.now
    end
  end
end

class Symbol
  def to_proc
    Proc.new do |x|
      x.send self
    end
  end
end
