class CreateQuestionbanks < ActiveRecord::Migration[5.2]
  def change
    create_table :questionbanks do |t|
      t.boolean :default 
      t.name :string
      
      t.timestamps
    end
  end
end
