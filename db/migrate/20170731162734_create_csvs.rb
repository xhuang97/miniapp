class CreateCsvs < ActiveRecord::Migration
  def change
    create_table :csvs, id: false, primary_key: :_id do |t|
      t.string :_id, NULL: false
      t.datetime :dateTime
      t.string :type
      t.string :sessionId
      t.string :sessionDesc
      t.integer :sessionCond
      t.boolean :isUndo

      t.timestamps
    end

    add_index :csvs, :_id, unique: true

  end
end
