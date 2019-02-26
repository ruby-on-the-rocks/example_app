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
end
