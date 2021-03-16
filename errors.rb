class Error
  def self.foo
    begin
      # some_method # NameError
      # 'baz' + 1   #TypeError
      puts 'ok'
    rescue NameError => e
      puts 'NameError'
    rescue TypeError => e
      puts 'TypeError'
    end
  end
end


