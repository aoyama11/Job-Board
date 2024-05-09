class AddUserIdToJobResponses < ActiveRecord::Migration[7.1]
  def change
    add_column :job_responses, :user_id, :integer
  end
end
