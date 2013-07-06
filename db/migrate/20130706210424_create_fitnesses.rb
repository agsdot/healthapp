class CreateFitnesses < ActiveRecord::Migration
  def change
    create_table :fitnesses do |t|
      t.string :name

      t.timestamps
    end
  end
end
