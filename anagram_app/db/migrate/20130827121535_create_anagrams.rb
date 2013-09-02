class CreateAnagrams < ActiveRecord::Migration
  def change
    add_index :words, :sorted_letters
    remove_column :words, :length

    create_table :sorted_letters do |t|
      t.string  :sorted
      t.string  :anagrams, default: ""
      t.integer :count, default: 0
    end

    add_index :sorted_letters, :sorted
    add_index :sorted_letters, :count

  end

end
