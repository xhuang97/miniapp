class RenameCsvToInput < ActiveRecord::Migration
   def change
     rename_table :csvs, :inputs
   end
 end
