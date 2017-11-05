class AddColumnToChallenge < ActiveRecord::Migration[5.0]
  def change
    add_column :challenges, :openinghours, :string
  end
end
