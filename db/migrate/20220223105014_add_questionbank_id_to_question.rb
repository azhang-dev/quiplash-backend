class AddQuestionbankIdToQuestion < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :questionbank_id, :integer
  end
end
