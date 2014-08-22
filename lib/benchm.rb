
module Benchm

  @repeat = 1

  def self.ark(message = nil, repeat = @repeat)
    if repeat.class == Float
      raise ArgumentError, "No implicit conversion of Float to Integer."
    end
    if message.class == Fixnum
      repeat = message
      message = nil
    elsif message.class != String
      raise ArgumentError, "No implicit conversion of #{message.class} to String."
    end
    time_1 = Time.now
    repeat.to_i.times do
      yield
    end
    time_2 = Time.now
    puts
    print message.capitalize + ' ' if message
    print 'Total: '
    puts (time_2 - time_1).to_s + ' seconds'
    print message.capitalize + ' ' if message
    print 'Average: '
    puts ((time_2 - time_1)/repeat.to_f).to_s + ' seconds'
    puts
  end

  def self.repeat=(r)
    unless r.class == Fixnum
      raise ArgumentError, 'Repeat must be an integer.'
    end
    @repeat = r
  end

  def self.repeat
    @repeat
  end

end
