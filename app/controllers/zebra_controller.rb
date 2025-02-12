class ZebraController < ApplicationController
 
  def cat
    render({ :template => "game_template/square" })
  end

  def giraffe
    render({ :template => "game_template/square" })
  end

  def butterfly
    render({ :template => "game_template/square_root" })
  end

  def coyote
    render({ :template => "game_template/payment" })
  end

  def pomeranian
    render({ :template => "game_template/random" })
  end

  
def tiger
    @number = params.fetch("number").to_f
    @square = @number * @number
    render({ :template => "game_template/square_results" })
end

def dolphin
  @number = params.fetch("number").to_f
  @square = Math.sqrt(@number)
  render({ :template => "game_template/square_root_results" })
end

def parrot
  @apr = params.fetch("user_apr").to_f/100/12
  @years = params.fetch("user_years").to_f
  @principal = params.fetch("user_pv").to_f
  @payment = (@apr * @principal)/(1 - (1 + @apr) ** (-@years*12))
  @apr_outcome = "#{(@apr * 100 * 12).round(4)}%"
  @principal_outcome = @principal.to_fs(:currency)
  @payment_outcome = @payment.to_fs(:currency)
  render({ :template => "game_template/payment_results" })
end

def elephant
  @min = params.fetch("user_min").to_f
  @max = params.fetch("user_max").to_f
  @random = rand * (@max - @min) + @min
  render({ :template => "game_template/random_results" })
end

end
