class Admin::UsersController < Admin::BaseController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to [:admin, @user], notice: "User was successfully created."
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      redirect_to [:admin, @user], notice: "User was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to admin_users_url, notice: "User was successfully destroyed."
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(
        :email,
        :first_name,
        :last_name,
        :first_name_kana,
        :last_name_kana,
        :prefecture_code,
        :address_1,
        :address_2,
        :zip_1,
        :zip_2,
        :zip_3,
        :tel_1,
        :tel_2,
        :tel_3
      )
    end
end
