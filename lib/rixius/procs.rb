module Rixius
  module DateTime
    Now = Proc.new do
      ::DateTime.now
    end
  end
end
