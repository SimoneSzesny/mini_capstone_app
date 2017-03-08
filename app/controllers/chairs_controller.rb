class ChairsController < ApplicationController
  def chair1
    @chairs = Chair.all
    render "chairs.html.erb"
  end
end
