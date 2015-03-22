class SessionsController < ApplicationController
  def new
    
  end
  
  def create
    user = User.find_by(username: params[:session][:username].downcase)

    respond_to do |format|
      if user && user.authenticate(params[:session][:password])
        log_in user
        format.html {redirect_to(rsvp_path, :notice => "Logged in successfully")}
        format.js {render action: "create"}
      else
        format.js {render action: "error"}
        format.html {redirect_to(:back, :notice => "Username/password is invalid!")}

        #render 'new'
      end
    end
  end
  
  def destroy
    log_out
    redirect_to rsvp_path
  end
end
