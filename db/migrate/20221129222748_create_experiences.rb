class CreateExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|
      t.belongs_to :article
      t.string :worked_as
      t.string :company
      t.date :begin_date
      t.date :finish_date
      t.boolean :currently
      t.text :duties

      t.timestamps
    end
  end
end
