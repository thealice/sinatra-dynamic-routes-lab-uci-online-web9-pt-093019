require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do 
    @name = params[:name]
    reversed = @name.reverse
    "#{reversed}"
  end

  get "/square/:number" do 
    number = params[:number].to_i
    squared = number * number
    "#{squared}"
  end

  get "/say/:number/:phrase" do
    number = params[:number].to_i
    @phrase = params[:phrase]
    text = ''
      number.times do
        text += @phrase
      end
    text
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."

  end 

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    
    result = "Unknown operator"

    case @operation
      when 'add'
        result = (@number1 + @number2).to_s
      when 'subtract'
        result = (@number1 - @number2).to_s
      when 'multiply'
        result = (@number1 * @number2).to_s
      when 'divide'
        result = (@number1 / @number2).to_s
    end
  end

end