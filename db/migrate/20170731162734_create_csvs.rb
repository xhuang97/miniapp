class CreateCsvs < ActiveRecord::Migration
  def change
    create_table :csvs, id: false, primary_key: :_id do |t|
      t.string :_id, NULL: false
      t.datetime :dataTime
      t.string :type
      t.string :sessionId
      t.string :sessionDesc
      t.integer :sessionCond
      t.boolean :isUndo

      t.timestamps
    end
  end
end
