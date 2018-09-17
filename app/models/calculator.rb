class Calculator
  attr_accessor :input, :combine, :result

  def initialize
    @input = ""
    @combine = []
    @result = ""
  end

  def backspace
    @input = @input[0..-2]
    @result = @input

    if @input == "" then @result = "0" end

    @result
  end

  def period
    @input += '.' if !(@input.include? '.')

    @result
  end

  def plus
    operation "+"
  end

  def minus
    operation "-"
  end

  def divide
    operation "/"
  end

  def multiply
    operation "*"
  end

  def equals
    @result = evaluate @stack
    @input = ""
    @stack = []

    @result
  end
