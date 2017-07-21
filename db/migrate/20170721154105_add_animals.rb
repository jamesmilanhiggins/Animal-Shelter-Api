class AddAnimals < ActiveRecord::Migration[5.1]
  def change

    create_table :animals do |t|
      t.column :type, :string
      t.column :name, :string

      t.timestamp
    end
  end
end
