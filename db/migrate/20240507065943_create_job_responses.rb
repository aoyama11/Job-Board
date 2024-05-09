class CreateJobResponses < ActiveRecord::Migration[7.1]
  def change
    create_table :job_responses do |t|
      t.string :job_post_id
      t.string :email
      t.text :response
      t.text :resume
      t.timestamps
    end
  end
end
