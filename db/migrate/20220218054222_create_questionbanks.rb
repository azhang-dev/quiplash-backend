class CreateQuestionbanks < ActiveRecord::Migration[5.2]
  def change
    create_table :questionbanks do |t|

      t.timestamps
    end
  end
end
