class GuestsController < ApplicationController
  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find_by_id(params[:id])
    
  end

  def new 
    @guest = Guest.new  
  end
  
  def create
    @guest = Guest.new(guest_params)
    respond_to do |format|
      if @guest.save
        format.html { redirect_to rsvp, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: guest }
      else
        format.html { render :new }
        format.json { render json: guest.errors, status: :unprocessable_entity }
      end
    end      
  end
  
  def edit
  end
  
  private
      private
    # Use callbacks to share common setup or constraints between actions.
    def get_guest
      @guest = Guest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guest_params
      params.require(:guest).permit(:name, :email, :phone, :confirm)
    end
end
