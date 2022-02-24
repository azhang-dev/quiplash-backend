class RemoveQuestionbankIdFromQuestionbank < ActiveRecord::Migration[5.2]
  def change
    remove_column :questionbanks, :questionbank_id, :integer
  end
end
