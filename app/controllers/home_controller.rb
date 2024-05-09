class HomeController < ApplicationController
  def index
  end
  def employer
    # Assuming you already have @job_posts and @job_responses defined
    @job_posts = JobPost.where({}).order("updated_at DESC")
    @job_responses = JobResponse.where({}).order("updated_at DESC")
  end
end
  
