class AddUserIdToJobPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :job_posts, :user_id, :integer
  end
end
