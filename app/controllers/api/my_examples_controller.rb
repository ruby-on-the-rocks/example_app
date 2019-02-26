class Api::MyExamplesController < ApplicationController
  def fortune_method
    fortunes = [
      "You will be rich",
      "You will be poor",
      "You will die a horrible death in three days time"
    ]
    @fortune = fortunes.sample
    render "fortune.json.jbuilder"
  end

  def lotto_method
    @numbers = []
    6.times do
      @numbers << rand(1..60)
    end
    render "lotto.json.jbuilder"
  end
end
