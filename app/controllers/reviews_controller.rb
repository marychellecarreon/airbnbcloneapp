class ReviewsController < ApplicationController
  before_action :find_room
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit]

  # GET /reviews
  # GET /reviews.json

  # GET /reviews/1
  # GET /reviews/1.json


  # GET /reviews/new
  def new
    @review = Review.new
  end


  # GET /reviews/1/edit
  def edit
    if current_user.id == @booking.user.id
      @review.edit
        redirect_to room_path(@room)
    else 
      "This is not your post"
end
end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = Review.new(review_params)
    @review.room_id = @room.id
    @review.user_id = current_user.id
    if @review.save
      redirect_to room_path(@room)
    else
      render 'new'
    end
  end


  def update
    if @review.update(review_params)
      redirect_to room_path(@room)
    else
      render 'edit'
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    if current_user.id == @booking.user.id
      @review.destroy
        redirect_to room_path(@room)
    else 
      "This is not your post"
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:rating, :comment)
    end

    def find_room
      @room = Room.find(params[:room_id])
    end

    def find_review
      @review = Review.find(params[:id])
    end
  end
