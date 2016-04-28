class AddInfoToIssue < ActiveRecord::Migration
  def change
    add_column :issues, :typeofperson, :integer
    add_column :issues, :nbr_victims, :integer
    add_column :issues, :issue_level, :integer
  end
end
