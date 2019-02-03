class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:show, :update, :destroy]

  # GET /bookmarks -- only get all bookmarks for signed in user using token
  def index
    @bookmarks = Bookmark.all
    render json: @bookmarks
  end

  def my_bookmarks
    @job_seeker_id = JobSeeker.all.where(user_id: params[:id])
    @bookmarks = Bookmark.all.where(job_seeker_id: @job_seeker_id[0].id).order(created_at: :desc)
    # @bookmarks = Bookmark.all
    render json: @bookmarks
  end


  # GET /bookmarks/1
  def show
    render json: @bookmark
  end

  # POST /bookmarks
  def create
    @bookmark = Bookmark.new(bookmark_params)

    if @bookmark.save
      render json: @bookmark, status: :created, location: @bookmark
    else
      render json: @bookmark.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bookmarks/1
  def update
    if @bookmark.update(bookmark_params)
      render json: @bookmark
    else
      render json: @bookmark.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bookmarks/1
  def destroy
    @bookmark.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookmark
      @bookmark = Bookmark.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bookmark_params
      params.require(:bookmark).permit(:token,:job_seeker_id,:job_post_id)
    end
end
