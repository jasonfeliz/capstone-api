class JobPostsController < ApplicationController
  before_action :set_job_post, only: [:show, :update, :destroy]

  # GET /job_posts
  def index
    @job_posts = JobPost.all.order(updated_at: :desc)

    render json: @job_posts
  end

  # GET /job_posts/1
  def show
    render json: @job_post
  end

  # POST /job_posts
  def create
    @job_post = JobPost.new(job_post_params)
    if @job_post.save
      render json: @job_post, status: :created, location: @job_post
    else
      render json: @job_post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /job_posts/1
  def update
    if @job_post.update(job_post_params)
      render json: @job_post
    else
      render json: @job_post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /job_posts/1
  def destroy
    @job_post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_post
      @job_post = JobPost.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def job_post_params
      params.require(:job_post).permit(:user_id,:job_title,:job_description,:desired_skills)
    end
end
