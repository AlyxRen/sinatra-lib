module Rixius
  module Console
    def self.start
      require 'irb'

      begin
        require 'irb/completion'
      rescue Exception
        #no Readline capabilities, but that's cool.
      end

      if File.exists? '.irbc'
        ENV['IRBC'] = ".irbc"
      end

      IRB.start
    end
  end
end
