class AddDetailsToTutors < ActiveRecord::Migration[7.0]
  def change
    add_column :tutors, :school_name, :string
    add_column :tutors, :birthday_date, :datetime
  end
end
