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
 
 def new
  render "new.html.erb"
end

def create
  chair = Chair.new(
  name: params[:form_name],
  image: params[:form_image],
  price: params[:form_price], 
  description: params[:form_desription]
  )
  chair.save
  flash[:success] = "Chair sucessfully created!"
  redirect_to "/chairs/#{chair.id}"
end

def edit
  chair_id = params[:id]
  @chair = Chair.find_by(id: chair_id)
  render "edit.html.erb"
  end

def update
  chair_id = params[:id]
  @chair = Chair.find_by(id: chair_id)
  @chair.name = params[:form_name]
  @chair.image = params[:form_image]
  @chair.price = params[:form_price]
  @chair.description = params[:form_description]
  @chair.save
  flash[:sucess] = "Chair successfully updated!"
  redirect_to "/chairs/#{@chair.id}"
  end

  def destroy
    chair_id = params[:id]
    @chairs = Chair.find_by(id: chair_id)
    @chair.destroy
    flash[:danger] = "Chair successfully destroyed!"
    redirect_to "/chairs"
  end
end