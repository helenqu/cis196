class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
<<<<<<< HEAD
    @users = User.order(name: :asc).all
=======
    @users = User.all
>>>>>>> 06db2904bcca9c8a3857be579054a2f5ba3409a2
  end

  # GET /users/1
  # GET /users/1.json
  def show
<<<<<<< HEAD
    @user = User.find(params[:id])
    @posts = Post.where(user_id: @user.id)

=======
>>>>>>> 06db2904bcca9c8a3857be579054a2f5ba3409a2
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
<<<<<<< HEAD
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path

    # @user.destroy
    # respond_to do |format|
    #   format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
=======
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
>>>>>>> 06db2904bcca9c8a3857be579054a2f5ba3409a2
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
<<<<<<< HEAD
      params.require(:user).permit(:name, :posts, :email, :password)
=======
      params.require(:user).permit(:name, :posts)
>>>>>>> 06db2904bcca9c8a3857be579054a2f5ba3409a2
    end
end
