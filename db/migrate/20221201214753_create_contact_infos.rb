class CreateContactInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :contact_infos do |t|
      t.belongs_to :user
      t.string :name
      t.string :surname
      t.integer :phone
      t.string :email
      t.date :birth_date
      t.string :address

      t.timestamps
    end
  end
end
