class Nofly::EventLibrary

  def initialize(obj, options)
    @obj = obj
    @options = options
  end

  private

  def method_missing(method, *args, &block)
    # enables 'foo' to return @obj if it is an instance of the Foo class
    return @obj if @obj.class.to_s == method

    # access options' keys as if they were local variables
    if @options[method] || @options[method.to_sym] 
      return @options[method] || @options[method.to_sym]
    end

    super
  end

end