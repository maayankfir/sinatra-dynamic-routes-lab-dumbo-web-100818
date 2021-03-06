require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name}".reverse!
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @squared = @number * @number
    "#{@squared}".to_s
  end

  get '/say/:number/:phrase' do
    phrases = ""
    number = params[:number].to_i
    @phrase = params[:phrase]
    number.times do
      phrases << @phrase
    end
    phrases
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
      if @operation == "add"
        @result = @number1 + @number2
      elsif @operation == "subtract"
        @result = @number1 - @number2
      elsif @operation == "multiply"
        @result = @number1 * @number2
      elsif @operation == "divide"
        @result = @number1 / @number2
      end
    "#{@result}"
  end
end
