class CommentsController < ApplicationController
  before_action :set_comment, only: []

  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1
  # GET /comments/1.json
  # def show
  # end

  # GET /comments/new
  def new
    if current_user
      @user_id = current_user.id
      @advertisement = Advertisement.find(params[:advertisement_id])
      @comment = Comment.new
    else
      redirect_to root_path
    end
  end

  # GET /comments/1/edit
  # def edit
  #   if current_user
  #     @user_id = current_user.id
  #     @advertisement = Advertisement.find(params[:advertisement_id])
  #     @comment = Comment.find(params[:id])
  #   else
  #     redirect_to root_path
  #   end
  # end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.advertisement = Advertisement.find(params[:advertisement_id])

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment.advertisement, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  # def update
  #   @comment.user_id = current_user.id
  #   @comment.advertisement = Advertisement.find(params[:advertisement_id])
  #   @comment.update(comment_params)
  #   respond_to do |format|
  #     if @comment.update(comment_params)
  #       format.html { redirect_to @comment.advertisement, notice: 'Comment was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @comment }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @comment.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /comments/1
  # DELETE /comments/1.json
  # def destroy
  #     # @comment.user_id = current_user.id
  #     # @commentadvertisement_id = Advertisement.find(params[:advertisement_id])
  #     @comment.destroy
  #     respond_to do |format|
  #       format.html { redirect_to @comment.advertisement, notice: 'Comment was successfully destroyed.' }
  #       format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:content, :user_id, :advertisement_id)
    end
end
