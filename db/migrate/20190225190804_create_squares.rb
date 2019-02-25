class CreateSquares < ActiveRecord::Migration[5.2]
  def change
    create_table :squares do |t|
      t.float :side

      t.timestamps
    end
  end
end
