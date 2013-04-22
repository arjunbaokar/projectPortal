class CreateProjectUsers < ActiveRecord::Migration
  def change
    create_table :project_users do |t|
      t.project_id, :integer
      t.user_id, :integer
      t.timestamps
    end
  end
end
