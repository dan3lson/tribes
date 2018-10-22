class SignupController < ApplicationController
  def new
    @signup = Signup.new
  end

  def create
    @signup = Signup.new(signup_params)

    if @signup.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def signup_params
    params.require(:signup).permit(:first_name, :last_name, :email)
  end
end
