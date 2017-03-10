class ChairsController < ApplicationController
  def index
    @chairs = Chair.all
    render "chairs.html.erb"
  end
  def show
    chair_id = params[:id]
    @chair = Chair.find_by(id: chair_id)
    render "show.html.erb"
end
end
