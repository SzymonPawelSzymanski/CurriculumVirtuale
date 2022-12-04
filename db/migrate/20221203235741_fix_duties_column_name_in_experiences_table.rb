class FixDutiesColumnNameInExperiencesTable < ActiveRecord::Migration[7.0]
  def change
    rename_column :experiences, :duties, :job_duties
  end
end
