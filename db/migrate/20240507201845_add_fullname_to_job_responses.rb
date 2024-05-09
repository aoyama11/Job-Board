class AddFullnameToJobResponses < ActiveRecord::Migration[7.1]
  def change
    add_column :job_responses, :fullname, :string
  end
end
