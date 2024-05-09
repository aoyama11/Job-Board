class JobPostsController < ApplicationController
  load_and_authorize_resource

  # GET /job_posts
  def index
    set_tab :all_posts
    @job_posts = JobPost.order(updated_at: :desc)

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /job_posts/mine
  def mine
    set_tab :my_posts
    @job_posts = current_user.job_posts.order(updated_at: :desc)

    respond_to do |format|
      format.html # mine.html.erb
    end
  end

  # GET /job_posts/1
  def show
    @job_post = JobPost.find(params[:id])
    @job_response = @job_post.my_first_response(current_user.id) if user_signed_in?

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /job_posts/new
  def new
    @job_post = JobPost.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /job_posts/1/edit
  def edit
    @job_post = JobPost.find(params[:id])
  end

  # POST /job_posts
  def create
    @job_post = current_user.job_posts.build(job_post_params)

    respond_to do |format|
      if @job_post.save
        format.html { redirect_to @job_post, notice: 'Job post was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /job_posts/1
  def update
    @job_post = JobPost.find(params[:id])

    respond_to do |format|
      if @job_post.update(job_post_params)
        format.html { redirect_to @job_post, notice: 'Job post was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /job_posts/1
  def destroy
    @job_post = JobPost.find(params[:id])
    @job_post.destroy
    redirect_to job_posts_path

  end

  private

  # Use strong parameters to whitelist the required attributes
  def job_post_params
    params.require(:job_post).permit(:title, :description, :company, :url)
  end
end
