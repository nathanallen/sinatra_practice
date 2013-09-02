class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.belongs_to :category
      #t.boolean :active, default: true
    end
  end

end
