class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @prototype = @user.prototypes
    @prototypes = @user.prototypes
  end

  private

end