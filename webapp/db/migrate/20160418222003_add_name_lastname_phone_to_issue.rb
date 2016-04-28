class AddNameLastnamePhoneToIssue < ActiveRecord::Migration
  def change
     add_column :issues, :name, :string
     add_column :issues, :last_name, :string
     add_column :issues, :phone, :string
     remove_column :issues, :ip
     add_column :issues, :ip, :inet
  end
end
