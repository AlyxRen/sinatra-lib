module Rixius
  module Utils
    
    def js *keys, &block
      @js ||= []
      if block_given?
        @js.push capture_haml &block
      else 
        keys.each do |key|
          @js.push "<script src=\"/js/#{key}.js\"></script>"
        end
      end
      nil
    end 
    def js_dep *keys, &block
      @js ||= []
      if block_given?
        @js = [ capture_haml(&block), *@js]
      end
      keys = keys.map {|key| "<script src=\"/js/#{key}.js\"></script>" }
      @js = keys.push *@js
      nil
    end
    def js_render *args, &block
      @js ||= []
      js_dep *args, &block
      @js.join "\n"
    end

    def css *keys, &block
      @css ||= []
      if block_given?
        @css.push capture_haml &block
      else 
        keys.each do |key|
          @css.push "<link rel=\"stylesheet\" href=\"/css/#{key}.css\">"
        end
      end
      nil
    end 
    def css_dep *keys, &block
      @css ||= []
      if block_given?
        @css = [ capture_haml(&block), *@css]
      end
      keys = keys.map {|key| "<link rel=\"stylesheet\" href=\"/css/#{key}.css\">" }
      @css = keys.push *@css
      nil
    end
    def css_render *args, &block
      @css ||= []
      css_dep *args, &block
      @css.join "\n"
    end
  end
end
