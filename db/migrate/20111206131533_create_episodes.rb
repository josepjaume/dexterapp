class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.integer :season
      t.integer :number
      t.references :show

      t.timestamps
    end
    add_index :episodes, :show_id
  end
end
