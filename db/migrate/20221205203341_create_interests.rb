class CreateInterests < ActiveRecord::Migration[7.0]
  def change
    create_table :interests do |t|
      t.belongs_to :article
      t.string :interest

      t.timestamps
    end
  end
end
