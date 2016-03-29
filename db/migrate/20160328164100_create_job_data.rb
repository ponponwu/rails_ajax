class CreateJobData < ActiveRecord::Migration
  def change
    create_table :job_data do |t|

      t.timestamps null: false
    end
  end
end
