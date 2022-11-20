class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :owner
      t.integer :uniq_id
      t.integer :cv_id

      t.timestamps
    end
  end
end
