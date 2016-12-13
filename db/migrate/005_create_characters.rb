

class CreateCharacters < ActiveRecord::Migration
    create_table :characters do |t|
      t.string :catchphrase
      t.string :name
    end
end
