class CreateTriangles < ActiveRecord::Migration[5.2]
  def change
    create_table :triangles do |t|
      t.float :side

      t.timestamps
    end
  end
end
