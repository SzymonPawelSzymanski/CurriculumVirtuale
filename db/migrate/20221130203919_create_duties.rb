class CreateDuties < ActiveRecord::Migration[7.0]
  def change
    create_table :duties do |t|
      t.belongs_to :experience
      t.string :duty_text
      t.string :string

      t.timestamps
    end
  end
end
