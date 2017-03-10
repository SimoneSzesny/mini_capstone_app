class ChairsController < ApplicationController
  def index
    @chairs = Chair.all
    render "chairs.html.erb"
  end
  def show
    chairs_id = params[:id]
    @chairs = Chair.find_by(id: chair_id)
    render "show.html.erb"
end
end
