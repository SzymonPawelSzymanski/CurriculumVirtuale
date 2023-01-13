class CreateLanguages < ActiveRecord::Migration[7.0]
  def change
    create_table :languages do |t|
      t.belongs_to :article
      t.string :language
      t.string :level

      t.timestamps
    end
  end
end
