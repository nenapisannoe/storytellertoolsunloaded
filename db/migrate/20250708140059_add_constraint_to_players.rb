class AddConstraintToPlayers < ActiveRecord::Migration[8.0]
 def change
    change_column_null :players, :name, false
 end
end
