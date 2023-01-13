class ChangeLevelInLangs < ActiveRecord::Migration[7.0]
  def change
    rename_column :languages, :level, :speaking_level
    add_column :languages, :writing_level, :string
    add_column :educations, :if_university, :boolean
  end
end
