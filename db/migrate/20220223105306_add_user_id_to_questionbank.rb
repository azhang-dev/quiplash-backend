class AddUserIdToQuestionbank < ActiveRecord::Migration[5.2]
  def change
    add_column :questionbanks, :user_id, :integer
  end
end
