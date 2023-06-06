class AddMemberIdToTutors < ActiveRecord::Migration[7.0]
  def change
    add_column :tutors, :member_id, :integer
    add_index :tutors, :member_id
  end
end
