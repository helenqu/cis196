<<<<<<< HEAD
class CreateUsers < ActiveRecord::Migration
def change
	create_table :users do |t|
		t.string :name
		t.text :posts
		t.timestamps
end
end
end
=======
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.text :posts

      t.timestamps
    end
  end
end
>>>>>>> 06db2904bcca9c8a3857be579054a2f5ba3409a2
