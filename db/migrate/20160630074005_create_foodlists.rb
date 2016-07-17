class CreateFoodlists < ActiveRecord::Migration
  def change
    create_table :foodlists do |t|
      
      t.string :korea
      t.string :japan
      t.string :chinese
      t.string :soju
      t.string :beer
      t.string :meat
      

      t.timestamps null: false
    end
  end
end
