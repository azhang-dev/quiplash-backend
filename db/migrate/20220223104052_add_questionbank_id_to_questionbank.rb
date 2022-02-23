class AddQuestionbankIdToQuestionbank < ActiveRecord::Migration[5.2]
  def change
    add_column :questionbanks, :questionbank_id, :integer
  end
end
