class RemoveTwitterFromTutors < ActiveRecord::Migration[7.0]
  def change
    remove_column :tutors, :twitter, :string
  end
end
