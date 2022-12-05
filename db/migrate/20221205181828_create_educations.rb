class CreateEducations < ActiveRecord::Migration[7.0]
  def change
    create_table :educations do |t|
      t.belongs_to :article
      t.string :school
      t.string :field_of_study
      t.string :specialization
      t.string :title
      t.date :begin_date
      t.date :finish_date
      t.boolean :currently

      t.timestamps
    end
  end
end
