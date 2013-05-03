class CreateFavoriteIssues < ActiveRecord::Migration
  def change
    create_table :favorite_issues do |t|

      t.timestamps
    end
  end
end
