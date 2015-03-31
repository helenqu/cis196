class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
<<<<<<< HEAD
    @posts = Post.order(user: :desc).limit(3).all
    @posts2 = Post.where(lat: '39.95').offset(1).all
=======
    @posts = Post.all
>>>>>>> 06db2904bcca9c8a3857be579054a2f5ba3409a2
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
<<<<<<< HEAD
    @post = Post.find(params[:id])
    # @comment = Comment.new
    # @comments = Comment.where(post_id: params[:id])
=======
>>>>>>> 06db2904bcca9c8a3857be579054a2f5ba3409a2
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
<<<<<<< HEAD
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to users_path

    # respond_to do |format|
    #   format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
=======
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
>>>>>>> 06db2904bcca9c8a3857be579054a2f5ba3409a2
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:user, :lat, :long, :content)
    end
end
